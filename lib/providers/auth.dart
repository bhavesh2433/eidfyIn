import 'package:edifyin/providers/display_data.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/http_exception.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';


class Auth with ChangeNotifier {
  String _accessToken;
  String _refreshToken;
  DateTime _accessTokenExpiresIn;
  DateTime _refreshTokenExpiresIn;
  Timer _accessTimer;
  Timer _refreshTimer;

  bool get isAuth {
    return token != null;
  }

  String get token {
    if ( _accessTokenExpiresIn != null &&
        _accessTokenExpiresIn.isAfter(DateTime.now()) &&
        _accessToken != null) {
      return _accessToken;
    }
    return null;
  }

  String get refreshToken {
    return _refreshToken;
  }

  Future<void> authenticate(
      String username,
      String password) async {
    final url = 'https://api.edifyin.teamin.in/token';

    try{
      final tokenResponse = await http.post(url, body: {
        'username': '0007',
        'password': 'testing1',
        'grant_type': 'password',
        'scope': 'org:B0C5B70A-5273-4B3A-865E-8E172F699C5A',
        'client_id': 'android'
      });
      // print(tokenResponse.body);
      final responseData = json.decode(tokenResponse.body);
      if (responseData['error'] != null ) {
        throw HttpException(responseData['error']['message']);
      }
      _accessToken = responseData['access_token'];
      _refreshToken = responseData['refresh_token'];
      _accessTokenExpiresIn = DateTime.now()
          .add(Duration(seconds: responseData['expires_in']));
      _refreshTokenExpiresIn = DateTime.now()
          .add(Duration(days: 7));
      _autoLogout();
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode({
        'access_token': _accessToken,
        'refresh_token': _refreshToken,
        'accessTokenExpiresIn':  _accessTokenExpiresIn.toIso8601String(),
        'refreshTokenExpiresIn': _refreshTokenExpiresIn.toIso8601String()
      });
      prefs.setString('userData', userData);
      // DisplayData().fetchDrawerData(_accessToken);
      
    } catch (error) {
      throw HttpException(error);
    }
  }

  // Future<bool> tryAutoLogin() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   if (!prefs.containsKey('userData')) {
  //     return false;
  //   }
  //   final extractedData = json.decode(
  //       prefs.getString('userData')) as Map<String, Object>;
  //   final accessTokenExpiryDate = DateTime.parse(extractedData['accessTokenExpiresIn']);
  //   final refreshTokenExpiryDate = DateTime.parse(extractedData['refreshTokenExpiresIn']);
  //
  //   if (accessTokenExpiryDate.isBefore(DateTime.now()) || refreshTokenExpiryDate.isBefore(DateTime.now()) ) {
  //     return false;
  //   }
  //   _accessToken = extractedData['token'];
  //   _refreshToken = extractedData['userId'];
  //   _accessTokenExpiresIn = accessTokenExpiryDate;
  //   _refreshTokenExpiresIn = refreshTokenExpiryDate;
  //   _autoLogout();
  //   notifyListeners();
  //   return true;
  // }

  // fetching tokens using refresh_token
  Future<void> renewAccessToken() async{
    final urlToken2 = 'https://api.edifyin.teamin.in/token';

    try {
      final tokenResponse2 = await http.post(urlToken2,
          body: {
            'grant_type': 'refresh_token',
            'refresh_token': _refreshToken,
            'client_id': 'android'
          });
      // print(tokenResponse2.body);

      final responseData = json.decode(tokenResponse2.body) as Map<String, dynamic>;
      _accessToken = responseData['access_token'];
      _refreshToken = responseData['refresh_token'];
      _accessTokenExpiresIn = DateTime.now()
          .add(Duration(seconds: responseData['expires_in']));
      _refreshTokenExpiresIn = DateTime.now()
          .add(Duration(days: 7));
      _autoLogout();
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = json.encode({
        'access_token': _accessToken,
        'refresh_token': _refreshToken,
        'accessTokenExpiresIn':  _accessTokenExpiresIn.toIso8601String(),
        'refreshTokenExpiresIn': _refreshTokenExpiresIn.toIso8601String()
      });
      prefs.setString('userData', userData);

      // print('New Tokens');
      // print(_accessToken);
      // print(_refreshToken);
    } catch (error) {
      throw error;
    }
  }


  Future<void> logout() async{
    _accessToken = null;
    _refreshToken = null;
    _accessTokenExpiresIn = null;
    _refreshTokenExpiresIn = null;
    if(_accessTimer != null) {
      _accessTimer.cancel();
      _accessTimer = null;
    }

    if(_refreshTimer != null) {
      _refreshTimer.cancel();
      _refreshTimer = null;
    }

    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  void _autoLogout() {
    if(_accessTimer != null) {
      _accessTimer.cancel();
    }

    if(_refreshTimer != null) {
      _refreshTimer.cancel();
    }
    final accessTimeToExpiry =  _accessTokenExpiresIn.difference(DateTime.now()).inSeconds;
    _accessTimer = Timer(Duration(seconds: accessTimeToExpiry), renewAccessToken);

    final refreshTimeToExpiry = _refreshTokenExpiresIn.difference(DateTime.now()).inDays;
    _refreshTimer = Timer(Duration(days: refreshTimeToExpiry), logout);
  }
}

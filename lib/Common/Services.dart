import 'dart:convert';
import 'dart:io';

import 'package:edifyin/models/http_exception.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<void> orgLoginByQrCode(String qrcodeUrl) async {
    final url =
        'https://api.edifyin.teamin.in/Developer/Organisation/Clients/Client/ByURL/$qrcodeUrl';
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print("->>>" + responseData);
      } else
        throw HttpException("qr code is invalid");
    } catch (error) {
      throw HttpException(error);
    }
  }

  Future<Map> getUserData(String authToken) async {
    final url = 'https://api.edifyin.teamin.in/Student/Context/Profile';
    print("->>" + authToken);
    try {
      final response = await http.get(
        url,
        headers: {"Authorization": "Bearer " + authToken},
      );
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        return responseData;
      } else {
        print("error ->" + response.statusCode.toString());
        throw HttpException("Data not found");
      }
    } catch (error) {
      throw HttpException(error.toString());
    }
  }
}

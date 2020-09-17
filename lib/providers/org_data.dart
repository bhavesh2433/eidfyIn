import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import '../models/organisation_item.dart';


import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import './auth.dart';



class OrgData with ChangeNotifier{
  List<OrganisationItem> _organisation = [];

  String _accessToken;
  String _refreshToken;
  DateTime _expiresIn;
  Timer _authTimer;


  List<OrganisationItem> get organisation {
    return [..._organisation];
  }

  Future<void> fetchGUID(String orgCode) async {


    // Fetching guid
    final url =
        'https://api.edifyin.teamin.in/Developer/Organisation/Clients/Client/ByCode/$orgCode';
    final response = await http.get(url);
    List<OrganisationItem> loadedOrganisation = [];
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    if (extractedData == null) {
      print('no Data');
      return null;
    } else {
      loadedOrganisation.add(OrganisationItem(
          organisationCode: extractedData['OrganisationCode'],
          guid: extractedData['GUID'])
      );

      _organisation = loadedOrganisation.toList();
      notifyListeners();
      // print("guid: ${extractedData['GUID']}");
      // Auth().authenticate();
    }


    // //Fetching user info
    //
    // //Fetching data to be displayed in drawer
    // final urlToken4 = 'https://api.edifyin.teamin.in/Common/Context/Defaults';
    //
    // try {
    //   final tokenResponse4 = await http.get(urlToken4, headers: {
    //     'Authorization': 'Bearer $_accessToken'
    //   }
    //   );
    //   // print(tokenResponse4.body);
    //
    //   // final responseData = json.decode(tokenResponse3.body) as Map<String, dynamic>;
    //   // _expiresIn = DateFormat().add.parse(responseData['expires']);
    //
    //   // print('New Tokens');
    //   // print(_accessToken);
    //   // print(_refreshToken);
    // } catch (error) {
    //   throw error;
    // }

    //To be omitted


    //
    // try {
    //   final tokenResponse4 = await http.get(urlToken4, headers: {
    //     'Authorization': 'Bearer $_accessToken'
    //   }
    //   );
    //   // print(tokenResponse4.body);
    //
    //   // final responseData = json.decode(tokenResponse3.body) as Map<String, dynamic>;
    //   // _expiresIn = DateFormat().add.parse(responseData['expires']);
    //
    //   // print('New Tokens');
    //   // print(_accessToken);
    //   // print(_refreshToken);
    // } catch (error) {
    //   throw error;
    // }
  }





// Future<void> fetchRefreshToken() async {
//   final url = 'https://api.edifyin.teamin.in/Developer/Organisation/Clients/Client/ByCode/token';
//   final response = await http.get(
//       url , headers:
//   );
//   final OrganisationItem extractedData = json.decode(response.body);
//   if (extractedData == null) {
//     print('no Data');
//     return null;
//   }
//   else {
//     guid = extractedData.guid;
//     print(guid);
//   }
// }

}

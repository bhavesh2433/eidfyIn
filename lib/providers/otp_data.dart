import 'dart:collection';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class RegType {
  final int id;
  final String text;

  RegType({
    this.id,
    this.text
});
}

class ContactNumberType {
  final int id;
  final String text;

  ContactNumberType({
    this.id,
    this.text
});
}

class MobileNumber {
  final ContactNumberType contactNumberType;
  final int countryCode;
  final int contactNumber;

  MobileNumber({
      this.contactNumberType,
      this.countryCode,
      this.contactNumber}
      );
}


class Post {
  final String organisationCode;
  final RegType registrationType;
  final String code;
  final MobileNumber mobileNumber;

  Post({
    this.organisationCode,
    this.registrationType,
    this.code,
    this.mobileNumber
});
}

class RegResponse {
  final Post regResponse;

  RegResponse(this.regResponse);
}



class OtpData with ChangeNotifier{

  Future<void> fetchRegisterData() async{
    final url = 'https://api.edifyin.teamin.in/Open/Register';

    final response = await http.get(url);
    final LinkedHashMap<String, dynamic> responseData = json.decode(response.body);

    // responseData.forEach((element) {print(element);});
    final HashMap<String, List<dynamic>> storeResponse = HashMap<String, dynamic>
        .from(responseData.map(
            (key, value) {
              HashMap<String, dynamic> values = HashMap<String, dynamic>.from(value);
              print(key);
              print(value);
              print(values);
              return MapEntry(
                  key.toString(),
                  values.map((key2, value2) {
                    // List<String> values2 = List<String>.from(value2);
                    print(key2);
                    print(value2);
                    // print(values2);
                    return MapEntry(
                        key2.toString(),
                        value2.toString(),);
                        // values2.map((theValue) {
                      // return theValue.toString();
                    // })
                    //   .toList());

                  }));
            }));
    print(storeResponse);
}
}
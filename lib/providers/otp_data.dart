import 'dart:collection';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class OtpData with ChangeNotifier {
  var id;
  int otp;

  var otpApi;


  Future<void> fetchRegisterData(
      Map<String, dynamic> _requiredData) async {
    // fetching data
    print('sjbaifhdehfuoef');
    print(_requiredData);
    final url = 'https://api.edifyin.teamin.in/Open/Register';
    final response = await http.get(url);
    final LinkedHashMap<String, dynamic> responseData =
    json.decode(response.body);

    final postApiBody = {
      "OrganisationCode": 'ED',
      "RegistrationType": {
        "Id": 2,
        "Text": 'Student'
      },
      "Code": 0013,
      "MobileNumber": {
        "ContactNumberType": {"Id": 2002, "Text": "Mobile"},
        "CountryCode": 91,
        "ContactNumber": 8511108666
      }
    };

    //Using response of previous api as body to send otp.
    final responseOfPost = await http.post(
        url,
        body: json.encode(postApiBody));
    print(responseOfPost.statusCode);

    final decodedResponse = json.decode(responseOfPost.body);

    //   id = decodedResponse['Data']['Id'];
    //
    //   // Using id extracted in last put request for next otp request
    //   final urlPreOtp = 'https://api.edifyin.teamin.in/Open/Register/$id';
    //   final responsePreOtp = await http.get(
    //     urlPreOtp,
    //   );
    //
    //
    //   final decodedPreOtpResponse = json.decode(responsePreOtp.body);
    //   otpApi = decodedPreOtpResponse["Put"];
    //
    //   final urlOtp = 'https://api.edifyin.teamin.in/Open/Register/$id';
    //
    //   final responseOtp = await http.put(urlOtp, body: {
    //     "OTP": 123456,
    //     "NewPassword": "Testing2",
    //     "ConfirmPassword": "Testing2",
    //     "OrganisationCode": "ED",
    //     "RegistrationType": {"Id": 3, "Text": "Student"},
    //     "Code": "0013",
    //     "MobileNumber": {
    //       "ContactNumberType": {"Id": 2002, "Text": "Mobile"},
    //       "CountryCode": 91,
    //       "ContactNumber": 8511108666
    //     }
    //   });
    //
    //   print(responseOtp.statusCode);
    // }
    //
    //

  }
  Future<void> putOtp(
      Map<String, dynamic> _requiredData
      ) async {
    // Putting otp for verification
    final urlOtp = 'https://api.edifyin.teamin.in/Open/Register/$id';


    final responseOtp = await http.put(
        urlOtp,
        body: {
          "OTP": 123456,
          "NewPassword": "Testing2",
          "ConfirmPassword": "Testing2",
          "OrganisationCode": "ED",
          "RegistrationType": {
            "Id": _requiredData['id'],
            "Text": 'Student'
          },
          "Code": 0013,
          "MobileNumber": {
            "ContactNumberType": {
              "Id": 2002,
              "Text": "Mobile"
            },
            "CountryCode": 91,
            "ContactNumber": 8511108666
          }
        }
    );

    print(responseOtp.statusCode);
  }
}
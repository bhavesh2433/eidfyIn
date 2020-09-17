import 'dart:collection';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class OtpData with ChangeNotifier{
  int id;
  int otp;

  final postApiBody = {
    "OrganisationCode": "ED",
    "RegistrationType": {
      "Id": 3,
      "Text": "Student"
    },
    "Code": "0013",
    "MobileNumber": {
      "ContactNumberType": {
        "Id": 2002,
        "Text": "Mobile"
      },
      "CountryCode": 91,
      "ContactNumber": 8511108666
    }
  };

  var otpApi ;

  // void setOtp(int receivedOtp) {
  //   otpApi =
  //   { "OTP": receivedOtp,
  //     "NewPassword": "Testing2",
  //     "ConfirmPassword": "Testing2",
  //     "OrganisationCode": "ED",
  //     "RegistrationType": {
  //       "Id": 3,
  //       "Text": "Student"
  //     },
  //     "Code": "0013",
  //     "MobileNumber": {
  //       "ContactNumberType": {
  //         "Id": 2002,
  //         "Text": "Mobile"
  //       },
  //       "CountryCode": 91,
  //       "ContactNumber": 8511108666
  //     }
  //   } as LinkedHashMap;
  // }
  Future<void> fetchRegisterData() async{
    // fetching data
    final url = 'https://api.edifyin.teamin.in/Open/Register';

    final response = await http.get(url);
    // print(response.body);
    final LinkedHashMap<String, dynamic> responseData = json.decode(response.body);


    //Using response of previous api as body to send otp.
    final responseOfPost = await http.post(
        url,
        // headers: {"Content-Type": "application/json"},
        body: json.encode(
        postApiBody
        )
        // response.body,
    );
    //
    print(responseOfPost.statusCode);

    final decodedResponse = json.decode(responseOfPost.body);

    print(decodedResponse);

    id = decodedResponse['Data']['Id'];



    // Using id extracted in last put request for next otp request

    final urlPreOtp = 'https://api.edifyin.teamin.in/Open/Register/$id';

    final responsePreOtp = await http.get(urlPreOtp,
        );

    print(json.decode(responsePreOtp.body));

    final decodedPreOtpResponse = json.decode(responsePreOtp.body);
    otpApi = decodedPreOtpResponse["Put"];

    print(otpApi);

    final urlOtp = 'https://api.edifyin.teamin.in/Open/Register/$id';

    final responseOtp = await http.put(
        urlOtp,
        body: {
          "OTP": 123456,
          "NewPassword": "Testing2",
          "ConfirmPassword": "Testing2",
          "OrganisationCode": "ED",
          "RegistrationType": {
            "Id": 3,
            "Text": "Student"
          },
          "Code": "0013",
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
  // Future<void> putOtp() async {
  //   // Putting otp for verification
  //   final urlOtp = 'https://api.edifyin.teamin.in/Open/Register/$id';
  //
  //   final responseOtp = await http.put(
  //       urlOtp,
  //       body: {
  //         "OTP": 123456,
  //         "NewPassword": "Testing2",
  //         "ConfirmPassword": "Testing2",
  //         "OrganisationCode": "ED",
  //         "RegistrationType": {
  //           "Id": 3,
  //           "Text": "Student"
  //         },
  //         "Code": "0013",
  //         "MobileNumber": {
  //           "ContactNumberType": {
  //             "Id": 2002,
  //             "Text": "Mobile"
  //           },
  //           "CountryCode": 91,
  //           "ContactNumber": 8511108666
  //         }
  //       }
  //   );
  //
  //   print(responseOtp.statusCode);
  //
  //
  // }

}
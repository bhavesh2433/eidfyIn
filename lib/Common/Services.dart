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
}

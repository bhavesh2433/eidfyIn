import 'dart:convert';

import 'package:flutter/foundation.dart';
import '../models/assignmentData.dart';
import 'package:http/http.dart' as http;


class AssignmentsData with ChangeNotifier {

  List<Record> _loadedAssignment = [];

  String pageSize = '10';
  int page = 0;
  //Fetching ListData

  List get loadedAssignment {
    return [..._loadedAssignment];
  }

    Future<void> fetchAssignmentData(
        String cn, String _accessToken,String pageNo) async {

    print(cn);
      final url = Uri.https(
          'api.edifyin.teamin.in',
          '/Common/List/General/Data',
          {
            'PageSize': '10',
            'Con': cn,
            'Page': '1'

          });

      try {
        final listDataResponse = await http.get(
            url, headers: {
          'Authorization': 'Bearer $_accessToken'
        }
        );

        print(listDataResponse.statusCode);

        // print(json.decode(listDataResponse.body));

        AssignmentData listExtracted = AssignmentData.fromJson(
            json.decode(listDataResponse.body));



        _loadedAssignment = listExtracted.records;

        print(_loadedAssignment);

      } catch (error) {
        throw error;
      }
    }

    Future<void> fetchDataAgain(
        String accessToken, String cn) async  {
      page += 1;

      await fetchAssignmentData(cn, accessToken, page.toString());

    }

}


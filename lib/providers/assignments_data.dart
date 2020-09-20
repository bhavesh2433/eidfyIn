import 'dart:convert';

import 'package:flutter/foundation.dart';
import '../models/assignmentData.dart';
import 'package:http/http.dart' as http;


class AssignmentsData with ChangeNotifier {

  List _loadedAssignment = [];

  int pageSize = 10;
  int page = 0;
  //Fetching ListData

  List get loadedAssignment {
    return [..._loadedAssignment];
  }

    Future<void> fetchAssignmentData(
        String cn, String _accessToken,String pageNo) async {
      final url = Uri.https(
          'api.edifyin.teamin.in',
          '/Common/List/General/Data',
          {
            'PageSize': pageSize.toString(),
            'Con': cn,
            'Page': pageNo

          });

      try {
        final listDataResponse = await http.get(
            url, headers: {
          'Authorization': 'Bearer $_accessToken'
        }
        );

        print(listDataResponse.statusCode);

        List<AssignmentData> listExtracted = json.decode(
            listDataResponse.body);

        print(json.decode(listDataResponse.body));
        _loadedAssignment.add(listExtracted[0].records);



        print(_loadedAssignment[0]['AssignmentId']);

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


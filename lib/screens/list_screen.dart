import 'package:flutter/material.dart';
import '../providers/assignments_data.dart';
import '../providers/auth.dart';
import '../widgets/app_drawer.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatelessWidget {
  static const routeName = 'list-screen';


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery
        .of(context)
        .size;

    final data = ModalRoute
        .of(context)
        .settings
        .arguments as Map<String, String>;
    final accessToken = Provider
        .of<Auth>(context)
        .token;

    print(data['cn']);

    return Scaffold(
        appBar: AppBar(
        title: Text(data['title']),
    ),
    drawer: AppDrawer(mediaQuery: mediaQuery,
    accessToken: accessToken),
    body: Container(
    height: mediaQuery.height,
    child: SingleChildScrollView(
    child:
    FutureBuilder(
    future: Provider.of<AssignmentsData>(context)
        .fetchDataAgain(accessToken, data['cn']),
    builder: (ctx, dataSnapshot) {
    if (dataSnapshot.connectionState == ConnectionState.waiting) {
    return Center(
        child: CircularProgressIndicator());
    } else {
    if (dataSnapshot.error != null) {
    // Do error handling stuff
    return Center(
    child: Text('An error occurred!'),
    );
    } else {
    return Consumer<AssignmentsData>(
    builder: (ctx, assignmentsData, child) {
    return ListView.builder(
    itemCount: assignmentsData.loadedAssignment.length,
    itemBuilder: (ctx, index) => Text('Hey')
    // Container(
    // height: mediaQuery.height * 0.2,
    // padding: EdgeInsets.only(left: 10, right: 10),
    // child: Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    // children: <Widget>[
    // Icon(Icons.person),
    // Container(
    // child: Column(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    // children: <Widget>[
    // Text('Assignment ${assignmentsData.loadedAssignment[index]['AssignmentId']}'),
    // Text('${assignmentsData.loadedAssignment[index]['PostedBy']}')
    // ],
    // ),
    // )
    // ],
    // ),
    // )
    );
    });
    }}}),
    ),
    ),);
    }
    }

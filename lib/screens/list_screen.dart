import 'package:edifyin/screens/assignment_detail.dart';
import 'package:flutter/material.dart';
import '../providers/assignments_data.dart';
import '../providers/auth.dart';
import '../widgets/app_drawer.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatelessWidget {
  static const routeName = 'list-screen';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    final data =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final accessToken = Provider.of<Auth>(context).token;

    print(data['cn']);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          data['title'],
          style: TextStyle(fontSize: 22, color: Colors.grey[800]),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      drawer: AppDrawer(mediaQuery: mediaQuery, accessToken: accessToken),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background_image.png",
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: FutureBuilder(
                future: Provider.of<AssignmentsData>(context)
                    .fetchAssignmentData(data['cn'], accessToken, '1'),
                builder: (ctx, dataSnapshot) {
                  if (dataSnapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    if (dataSnapshot.error != null) {
                      // Do error handling stuff
                      return Center(
                        child: Text('An error occurred!'),
                      );
                    } else {
                      return Consumer<AssignmentsData>(
                          builder: (ctx, assignmentsData, child) {
                        return SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            height: mediaQuery.height,
                            child: ListView.separated(
                              itemCount:
                                  assignmentsData.loadedAssignment.length,
                              itemBuilder: (ctx, index) {
                                return GestureDetector(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 25),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x29000000),
                                                offset: Offset(0, 3),
                                                blurRadius: 6,
                                              ),
                                            ],
                                          ),
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.blue,
                                            size: 35,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Assignment ${assignmentsData.loadedAssignment[index].assignmentId}',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.grey[700],
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                '${assignmentsData.loadedAssignment[index].postedBy}',
                                                style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 15,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        AssignmentDetail.routeName,
                                        arguments: assignmentsData
                                            .loadedAssignment[index]);
                                  },
                                );
                              },
                              separatorBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[300],
                                      spreadRadius: 1,
                                      offset: Offset(0, 1),
                                      blurRadius: 1,
                                    ),
                                  ]),
                                );
                              },
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
                            ),
                          ),
                        );
                      });
                    }
                  }
                }),
          ),
        ],
      ),
    );
  }
}

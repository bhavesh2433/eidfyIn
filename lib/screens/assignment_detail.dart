import 'package:flutter/cupertino.dart';

import '../models/assignmentData.dart';



import '../providers/auth.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssignmentDetail extends StatelessWidget {
  static const routeName = '/assignment-detail';




  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final accessToken = Provider
        .of<Auth>(context)
        .token;


    final selectedData = ModalRoute.of(context)
        .settings.arguments as Record;



    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Submit Assignments',
          style: TextStyle(
            fontFamily: 'Calibri',
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.left,
        ),
        elevation: 2,
      ),
      drawer: AppDrawer(mediaQuery: MediaQuery.of(context).size,
          accessToken: accessToken),
      body: Container(
        height: mediaQuery.height,
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: <Widget>[
            Container(
              height: mediaQuery.height * 0.1,
              child: Center(
                child: ListTile(
                  leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Icon(Icons.person, color: Colors.blue,)),
                  title: Text('Assignment ${selectedData.assignmentId}'),
                  subtitle: Text('${selectedData.postedBy}'),
                ),
              ),
            ),
            Divider(color: Colors.black54,thickness: 1,),
            Container(
              padding: EdgeInsets.all(20),
              height: mediaQuery.height * 0.7,
              child: Column(
                children: <Widget>[
                  Container(
                    height: mediaQuery.height * 0.4,
                    child: Text('${selectedData.description}',
                      softWrap: true,
                    maxLines: 5,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.attach_file),
                          onPressed: (){

                          }),
                      IconButton(
                          icon: Icon(Icons.videocam),
                          onPressed: (){

                          }
                      ),
                      IconButton(
                          icon: Icon(Icons.file_download),
                          onPressed: (){}
                      ),
                      IconButton(
                          icon: Icon(Icons.notifications),
                          onPressed: (){}
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

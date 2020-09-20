import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../models/assignmentData.dart';

import '../providers/auth.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssignmentDetail extends StatefulWidget {
  static const routeName = '/assignment-detail';

  @override
  _AssignmentDetailState createState() => _AssignmentDetailState();
}

class _AssignmentDetailState extends State<AssignmentDetail> {
  bool isFileOpen = false;

  setDate(date) {
    var format = DateFormat('MMM dd,yyyy');
    return format.format(date);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final accessToken = Provider.of<Auth>(context).token;

    final selectedData = ModalRoute.of(context).settings.arguments as Record;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Submit Assignments",
          style: TextStyle(fontSize: 22, color: Colors.grey[800]),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      drawer: AppDrawer(
          mediaQuery: MediaQuery.of(context).size, accessToken: accessToken),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background_image.png",
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Assignment ${selectedData.assignmentId}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '${selectedData.postedBy}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      spreadRadius: 1,
                      offset: Offset(1, 0),
                      blurRadius: 1,
                    ),
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    '${selectedData.description}',
                    softWrap: true,
                    style: TextStyle(color: Colors.grey),
                    maxLines: 5,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isFileOpen = !isFileOpen;
                        });
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/attach_icon.png",
                            width: 25,
                            height: 25,
                            color: isFileOpen ? Colors.lightBlue : Colors.grey,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Attachment",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/video_icon.png",
                          width: 25,
                          height: 25,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Video Call",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/download_icon.png",
                          width: 25,
                          height: 25,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Download",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/bell_icon.png",
                          width: 25,
                          height: 25,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Notification",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      spreadRadius: 1,
                      offset: Offset(1, 0),
                      blurRadius: 1,
                    ),
                  ]),
                ),
                SizedBox(
                  height: 15,
                ),
                isFileOpen
                    ? Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200],
                                        offset: Offset(0.6, 1),
                                        blurRadius: 2,
                                        spreadRadius: 2,
                                      )
                                    ]),
                                child: Icon(
                                  Icons.insert_drive_file,
                                  color: Colors.lightBlueAccent,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200],
                                        offset: Offset(0.6, 1),
                                        blurRadius: 2,
                                        spreadRadius: 2,
                                      )
                                    ]),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.lightBlueAccent,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200],
                                        offset: Offset(0.6, 1),
                                        blurRadius: 2,
                                        spreadRadius: 2,
                                      )
                                    ]),
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.lightBlueAccent,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200],
                                        offset: Offset(0.6, 1),
                                        blurRadius: 2,
                                        spreadRadius: 2,
                                      )
                                    ]),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.lightBlueAccent,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Due ${setDate(selectedData.dated)}",
            style: TextStyle(
              fontSize: 16,
              color: Colors.lightBlue,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: mediaQuery.width,
            height: 70,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.lightBlue,
              child: Text(
                "Submit Assignment",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

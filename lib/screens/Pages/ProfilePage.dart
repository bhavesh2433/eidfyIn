import 'dart:convert';
import 'dart:developer';

import 'package:edifyin/Common/Services.dart';
import 'package:edifyin/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  var profileData;

  ProfilePage({this.profileData});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Full Name",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "${widget.profileData["FullName"]}",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Admission Number",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "${widget.profileData["AdmissionNumber"]}",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Class",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "${widget.profileData["Class"]}",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Section",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "${widget.profileData["Section"]}",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Roll Number",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "${widget.profileData["Section"]}",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edifyin/Common/Services.dart';
import 'package:edifyin/components/bottomNavigationCustom.dart';
import 'package:edifyin/screens/Pages/HomePage.dart';
import 'package:edifyin/screens/Pages/ProfilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/app_drawer.dart';

import '../providers/auth.dart';
import '../providers/display_data.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List titleList = ["Home", "Second screen", "Profile", "Messages", "Settings"];

  int currentIndex = 0;

  var _profileData;

  bool isLoading = true;

  @override
  void initState() {
    getProfileData();
  }

  getProfileData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var data = jsonDecode(preferences.getString("userData"));
    await Services().getUserData(data["access_token"]).then((value) async {
      setState(() {
        _profileData = value;
        isLoading = false;
      });
    });
  }

  getPage(index) {
    switch (index) {
      case 0:
        return HomePage(
          userName: _profileData["FullName"],
        );
        break;

      case 1:
        return Container();
        break;

      case 2:
        return ProfilePage(
          profileData: _profileData,
        );
        break;

      case 3:
        return Container();
        break;

      case 4:
        return Container();
        break;

      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final accessToken = Provider.of<Auth>(context).token;

    Provider.of<DrawerDisplayData>(context).fetchSchemaData(accessToken);

    // ModalRoute.of(context).settings.arguments as
    return Scaffold(
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : getPage(currentIndex),
        //new code by chirag-19 Sep
        bottomNavigationBar: bottomNavigationCustom(
          index: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}

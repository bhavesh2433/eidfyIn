import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edifyin/Common/Services.dart';
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

    Provider.of<DisplayData>(context).fetchSchemaData(accessToken);

    // ModalRoute.of(context).settings.arguments as
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleList[currentIndex],
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
          ),
          isLoading
              ? Center(child: CircularProgressIndicator())
              : getPage(currentIndex),
        ],
      ),
      //new code by chirag-19 Sep
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 2,
              spreadRadius: 3,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              child: Image.asset(
                "assets/images/home_icon.png",
                width: 25,
                height: 25,
                color: currentIndex == 0 ? Color(0xff4fc7f3) : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              child: Image.asset(
                "assets/images/share_icon.png",
                width: 25,
                height: 25,
                color: currentIndex == 1 ? Color(0xff4fc7f3) : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: Image.asset(
                "assets/images/profile_icon.png",
                width: 25,
                height: 25,
                color: currentIndex == 2 ? Color(0xff4fc7f3) : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              child: Image.asset(
                "assets/images/chat_icon.png",
                width: 25,
                height: 25,
                color: currentIndex == 3 ? Color(0xff4fc7f3) : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              child: Image.asset(
                "assets/images/setting_icon.png",
                width: 25,
                height: 25,
                color: currentIndex == 4 ? Color(0xff4fc7f3) : Colors.grey,
              ),
            ),
          ],
        ),
      ),
      //old code
      /*bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(Icons.home),
          Icon(Icons.message),
          Icon(Icons.person),
          Icon(Icons.send),
          Icon(Icons.settings)
        ],
        onTap: (index) {},
        index: 0,
        animationDuration: Duration(milliseconds: 500),
      ),*/
    );
  }
}

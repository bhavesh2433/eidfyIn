import 'package:edifyin/Common/Constants.dart';
import 'package:edifyin/Common/Constants.dart';
import 'package:edifyin/Common/Constants.dart';
import 'package:edifyin/Common/Constants.dart';
import 'package:edifyin/Common/Constants.dart';
import 'package:flutter/material.dart';

class bottomNavigationCustom extends StatefulWidget {
  Function onTap;
  int index;

  bottomNavigationCustom({this.onTap, this.index});

  @override
  _bottomNavigationCustomState createState() => _bottomNavigationCustomState();
}

class _bottomNavigationCustomState extends State<bottomNavigationCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: appColor,
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
              widget.onTap(0);
            },
            child: Container(
              decoration: BoxDecoration(
                color: widget.index == 0 ? Colors.white : appColor,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/home_icon.png",
                width: 25,
                height: 25,
                color: widget.index == 0 ? appColor : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onTap(1);
            },
            child: Container(
              decoration: BoxDecoration(
                color: widget.index == 1 ? Colors.white : appColor,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/share_icon.png",
                width: 25,
                height: 25,
                color: widget.index == 1 ? appColor : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onTap(2);
            },
            child: Container(
              decoration: BoxDecoration(
                color: widget.index == 2 ? Colors.white : appColor,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/profile_icon.png",
                width: 25,
                height: 25,
                color: widget.index == 2 ? appColor : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onTap(3);
            },
            child: Container(
              decoration: BoxDecoration(
                color: widget.index == 3 ? Colors.white : appColor,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/chat_icon.png",
                width: 25,
                height: 25,
                color: widget.index == 3 ? appColor : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onTap(4);
            },
            child: Container(
              decoration: BoxDecoration(
                color: widget.index == 4 ? Colors.white : appColor,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/setting_icon.png",
                width: 25,
                height: 25,
                color: widget.index == 4 ? appColor : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

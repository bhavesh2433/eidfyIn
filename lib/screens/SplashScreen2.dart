import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: Container(
                child: SvgPicture.asset('assets/background.svg',fit: BoxFit.fitHeight),
              ),
            ),
          ),
          Align(alignment:Alignment.topCenter,child: Padding(
            padding: const EdgeInsets.only(top:120.0),
            child: Image.asset('assets/images/edifyin.png',width: 150),
          ))
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import './login.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class selectlogin extends StatelessWidget {
  selectlogin({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(40.0, 630.0),
            child: SizedBox(
              width: 292.0,
              height: 65.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 292.0, 65.0),
                    size: Size(292.0, 65.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xff4fc7f3),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(98.0, 21.0, 77.0, 28.0),
                    size: Size(292.0, 65.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 23,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(97.2, 735.0),
            child: SizedBox(
              width: 178.0,
              child: Text(
                'Forgot password ?',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(112.0, 87.0),
            child: Container(
              width: 133.0,
              height: 133.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 545.0),
            child: SizedBox(
              width: 292.0,
              height: 65.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 292.0, 65.0),
                    size: Size(292.0, 65.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xff4fc7f3),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(105.0, 21.0, 57.0, 28.0),
                    size: Size(292.0, 65.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 23,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 281.0),
            child: SizedBox(
              width: 292.0,
              height: 65.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 292.0, 65.0),
                    size: Size(292.0, 65.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(67.0, 21.0, 79.0, 23.0),
                    size: Size(292.0, 65.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Username',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 19,
                        color: const Color(0x80707070),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(34.5, 22.1, 18.5, 22.2),
                    size: Size(292.0, 65.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Icon feather-user-c…' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 14.8, 18.5, 7.4),
                          size: Size(18.5, 22.2),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_2xndh5,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.3, 0.0, 9.9, 9.9),
                          size: Size(18.5, 22.2),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_ch919s,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 375.0),
            child: SizedBox(
              width: 292.0,
              height: 65.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 292.0, 65.0),
                    size: Size(292.0, 65.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(65.0, 21.0, 100.0, 23.0),
                    size: Size(292.0, 65.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 19,
                        color: const Color(0x80707070),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(33.1, 19.5, 17.2, 24.3),
                    size: Size(292.0, 65.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Icon ionic-md-key' (shape)
                        SvgPicture.string(
                      _svg_g186go,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-3.0, 0.0),
            child:
                // Adobe XD layer: 'Top' (group)
                SizedBox(
              width: 375.0,
              height: 44.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 44.0),
                    size: Size(375.0, 44.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Rectangle 5' (shape)
                        Container(
                      decoration: BoxDecoration(
                        color: const Color(0x00ffffff),
                      ),
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-3.0, 0.0),
            child:
                // Adobe XD layer: 'Three Actions' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Login(),
                ),
              ],
              child: SizedBox(
                width: 378.0,
                height: 812.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 378.0, 812.0),
                      size: Size(378.0, 812.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Dimming Overlay' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 378.0, 812.0),
                            size: Size(378.0, 812.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child:
                                // Adobe XD layer: 'Overlay' (shape)
                                Container(
                              color: const Color(0x4a0089c4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 522.0, 378.0, 290.0),
                      size: Size(378.0, 812.0),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Sheet with Cancel' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 8.0, 378.0, 282.0),
                            size: Size(378.0, 290.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child:
                                // Adobe XD layer: 'Frame' (shape)
                                Container(
                              decoration: BoxDecoration(
                                color: const Color(0x00ffffff),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(8.0, 0.0, 362.0, 221.0),
                            size: Size(378.0, 290.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Platter - Options' (shape)
                                ClipRect(
                              child: BackdropFilter(
                                filter: ui.ImageFilter.blur(
                                    sigmaX: 20.0, sigmaY: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    color: const Color(0xc7f9f9f9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(8.0, 229.0, 362.0, 56.0),
                            size: Size(378.0, 290.0),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Cancel Button' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 362.0, 56.0),
                                  size: Size(362.0, 56.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child:
                                      // Adobe XD layer: 'Button' (shape)
                                      Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14.0),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(
                                      MediaQuery.of(context).size.width * 0.38,
                                      13.0,
                                      100.0,
                                      27.0),
                                  size: Size(362.0, 56.0),
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child:
                                      // Adobe XD layer: 'Label' (text)
                                      Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 20,
                                      color: const Color(0x99000000),
                                      letterSpacing: -0.48,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_2xndh5 =
    '<svg viewBox="0.0 14.8 18.5 7.4" ><path transform="translate(-1.5, -7.71)" d="M 19.99100112915039 29.89640045166016 L 19.99100112915039 27.43093490600586 C 19.99100112915039 24.7076530456543 17.78334617614746 22.5 15.06006622314453 22.5 L 6.430933952331543 22.5 C 3.707653760910034 22.5 1.499999165534973 24.7076530456543 1.5 27.43093490600586 L 1.5 29.89640045166016" fill="#707070" stroke="none" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ch919s =
    '<svg viewBox="4.3 0.0 9.9 9.9" ><path transform="translate(-2.44, -4.5)" d="M 16.61186790466309 9.430933952331543 C 16.61186790466309 12.15421390533447 14.40421390533447 14.36186790466309 11.68093395233154 14.36186790466309 C 8.957653999328613 14.36186790466309 6.750000953674316 12.15421390533447 6.75 9.430934906005859 C 6.75 6.707654476165771 8.957653999328613 4.499999523162842 11.68093490600586 4.500000476837158 C 14.40421390533447 4.500000476837158 16.61186790466309 6.707655906677246 16.61186790466309 9.430934906005859 Z" fill="#707070" stroke="none" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_g186go =
    '<svg viewBox="83.1 383.5 17.2 24.3" ><path transform="matrix(-0.309017, -0.951057, 0.951057, -0.309017, 89.92, 407.8)" d="M 10.63298416137695 7.187304496765137 C 9.882543563842773 9.311787605285645 7.721067905426025 10.99234867095947 5.337630748748779 10.99234867095947 C 2.314734935760498 10.99234867095947 0 8.519070625305176 0 5.496174812316895 C 0 2.473278045654297 2.420430660247803 0 5.443326473236084 0 C 7.82676362991333 0 9.887828826904297 1.680560111999512 10.63298416137695 3.80504322052002 L 16.06574058532715 3.80504322052002 L 16.06574058532715 0.4227819442749023 L 19.71752548217773 0.4227819442749023 L 19.71752548217773 3.80504322052002 L 21.98469734191895 3.80504322052002 L 21.98469734191895 7.187304496765137 L 10.63298416137695 7.187304496765137 Z M 5.475035190582275 3.672924995422363 C 4.470926761627197 3.672924995422363 3.651785373687744 4.4920654296875 3.651785373687744 5.496174812316895 C 3.651785373687744 6.500283241271973 4.470926761627197 7.319422721862793 5.475035190582275 7.319422721862793 C 6.47914457321167 7.319422721862793 7.298285007476807 6.500283241271973 7.298285007476807 5.496174812316895 C 7.298285007476807 4.4920654296875 6.47914457321167 3.672924995422363 5.475035190582275 3.672924995422363 Z" fill="#707070" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

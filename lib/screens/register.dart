import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './NavBar1.dart';
import 'package:adobe_xd/page_link.dart';
import './authentication_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class register extends StatelessWidget {
  register({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(),
          Transform.translate(
            offset: Offset(107.0, 111.0),
            child: Container(
              width: 147.0,
              height: 147.0,
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
            offset: Offset(36.0, 703.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => NavBar1(),
                ),
              ],
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
                      bounds: Rect.fromLTWH(98.0, 19.0, 84.0, 30.0),
                      size: Size(292.0, 65.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 22,
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
          ),
          Transform.translate(
            offset: Offset(-7.0, 3.0),
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
            offset: Offset(30.0, 71.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => AuthenticationScreen(),
                ),
              ],
              child: Container(
                width: 52.0,
                height: 52.0,
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
          ),
          Transform.translate(
            offset: Offset(51.0, 91.0),
            child: SvgPicture.string(
              _svg_r89s2q,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_r89s2q =
    '<svg viewBox="51.0 91.0 6.6 12.3" ><path transform="translate(319.0, -1418.57)" d="M -261.3671569824219 1509.572509765625 L -268 1516.205322265625 L -261.3671569824219 1521.849609375" fill="none" stroke="#0089c4" stroke-width="4" stroke-miterlimit="4" stroke-linecap="round" /></svg>';

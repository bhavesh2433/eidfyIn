import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './LearningManagement2.dart';
import 'package:adobe_xd/page_link.dart';
import './LearningManagement1.dart';
import './Assigments4.dart';
import './authentication_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LearningManagement extends StatelessWidget {
  LearningManagement({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(),
          SvgPicture.string(
            _svg_w7uup6,
            allowDrawingOutsideViewBox: true,
          ),
          Container(
            width: 78.0,
            height: 812.0,
            decoration: BoxDecoration(
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
          Transform.translate(
            offset: Offset(18.0, 47.0),
            child: SizedBox(
              width: 32.0,
              height: 22.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 32.0, 4.0),
                    size: Size(32.0, 22.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffb3b1b1),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 8.8, 32.0, 4.6),
                    size: Size(32.0, 22.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_yy8juy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 18.0, 32.0, 4.0),
                    size: Size(32.0, 22.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffb3b1b1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(78.0, 120.8),
            child: SvgPicture.string(
              _svg_arexyo,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 134.0),
            child: SizedBox(
              width: 28.0,
              height: 24.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 28.0, 14.0),
                    size: Size(28.0, 24.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_e68r4i,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.0, 13.0, 19.0, 11.0),
                    size: Size(28.0, 24.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffb3b1b1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 364.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => LearningManagement2(),
                ),
              ],
              child: SizedBox(
                width: 24.0,
                height: 27.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 9.0, 24.0, 18.0),
                      size: Size(24.0, 27.0),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: const Color(0xffb3b1b1),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 6.0),
                      size: Size(24.0, 27.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: const Color(0xffb3b1b1),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(6.0, 0.0, 2.0, 9.0),
                      size: Size(24.0, 27.0),
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(16.0, 0.0, 2.0, 9.0),
                      size: Size(24.0, 27.0),
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 293.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => LearningManagement1(),
                ),
              ],
              child: SizedBox(
                width: 27.0,
                height: 17.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 27.0, 7.0),
                      size: Size(27.4, 17.2),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_b2q1uc,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 2.0, 27.4, 15.2),
                      size: Size(27.4, 17.2),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_y6maj8,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 212.0),
            child: SizedBox(
              width: 27.0,
              height: 27.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 10.1, 27.0, 16.9),
                    size: Size(27.0, 27.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Icon awesome-book-r…' (shape)
                        SvgPicture.string(
                      _svg_cqzwgx,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.4, 0.0, 10.1, 10.1),
                    size: Size(27.0, 27.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Icon awesome-book-r…' (shape)
                        SvgPicture.string(
                      _svg_bvqbi1,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(94.0, 147.0),
            child: Container(
              width: 46.0,
              height: 46.0,
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
            offset: Offset(53.8, 43.0),
            child: SizedBox(
              width: 247.0,
              child: Text(
                'Learning Management',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 22,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(117.0, 245.0),
            child: Text(
              'List All Items',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(101.7, 155.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Assigments4(),
                ),
              ],
              child: SizedBox(
                width: 157.0,
                height: 30.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(54.3, 1.0, 103.0, 24.0),
                      size: Size(157.3, 30.0),
                      pinRight: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Assignments',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          fontSize: 20,
                          color: const Color(0xff707070),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 30.0, 30.0),
                      size: Size(157.3, 30.0),
                      pinLeft: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child:
                          // Adobe XD layer: 'Icon feather-check-…' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 30.0, 30.0),
                            size: Size(30.0, 30.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              _svg_49zq56,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(10.5, 3.0, 19.5, 15.0),
                            size: Size(30.0, 30.0),
                            pinRight: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_uhd6xd,
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
          ),
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
          Transform.translate(
            offset: Offset(11.0, 730.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => AuthenticationScreen(),
                ),
              ],
              child: SizedBox(
                width: 52.0,
                height: 52.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 52.0, 52.0),
                      size: Size(52.0, 52.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 52.0, 52.0),
                            size: Size(52.0, 52.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 52.0, 52.0),
                                  size: Size(52.0, 52.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xffb3b1b1),
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(16.0, 13.0, 24.0, 27.0),
                      size: Size(52.0, 52.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 21.0, 27.0),
                            size: Size(24.0, 27.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                    width: 3.0, color: const Color(0xffffffff)),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(10.0, 9.0, 3.9, 7.3),
                            size: Size(24.0, 27.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_qh5ksh,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(11.3, 12.6, 12.7, 1.0),
                            size: Size(24.0, 27.0),
                            pinRight: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_xqon9v,
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
          ),
          Transform.translate(
            offset: Offset(26.0, 656.0),
            child: SizedBox(
              width: 26.0,
              height: 27.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.0, 0.0, 13.0, 13.0),
                    size: Size(26.2, 27.2),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffb3b1b1),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 15.7, 26.2, 11.5),
                    size: Size(26.2, 27.2),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_zeyfg6,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_w7uup6 =
    '<svg viewBox="0.0 0.0 316.7 812.0" ><defs><filter id="shadow"><feDropShadow dx="5" dy="3" stdDeviation="6"/></filter></defs><path  d="M 0 0 L 316.714111328125 0 L 316.714111328125 812 L 0 812 L 0 0 Z" fill="#ffffff" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_yy8juy =
    '<svg viewBox="18.0 55.8 32.0 4.6" ><path transform="translate(18.0, 54.4)" d="M 0 1.446044921875 L 32 1.446044921875 L 32 6 L 0 6 L 0 1.446044921875 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e68r4i =
    '<svg viewBox="21.0 120.0 28.0 14.0" ><path transform="translate(21.0, 120.0)" d="M 13.99999904632568 0 L 28 14 L 0 14 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_arexyo =
    '<svg viewBox="78.0 120.8 238.7 102.0" ><path transform="translate(-429.0, -1333.0)" d="M 507 1453.844970703125 L 745.714111328125 1453.844970703125" fill="none" fill-opacity="0.22" stroke="#707070" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-429.0, -1231.0)" d="M 507 1453.844970703125 L 745.714111328125 1453.844970703125" fill="none" fill-opacity="0.22" stroke="#707070" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b2q1uc =
    '<svg viewBox="18.0 252.0 27.0 7.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 45.0, 259.0)" d="M 13.49999809265137 0 L 26.99999809265137 7 L 0 7 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y6maj8 =
    '<svg viewBox="18.0 254.0 27.4 15.2" ><path transform="translate(807.0, -3029.0)" d="M -789 3282.97998046875 L -789 3298.218994140625 L -761.595703125 3298.218994140625 L -761.595703125 3282.97998046875 L -775.2601928710938 3290.0654296875 L -789 3282.97998046875 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cqzwgx =
    '<svg viewBox="54.0 384.6 27.0 16.9" ><path transform="translate(54.0, 371.12)" d="M 12.31792640686035 16.0892276763916 C 9.189270973205566 14.1739616394043 4.121619701385498 13.64768409729004 1.571446895599365 13.5026683807373 C 0.7145335078239441 13.45415496826172 0 14.10699081420898 0 14.93120956420898 L 0 26.68014526367188 C 0 27.43581008911133 0.6111766695976257 28.06596946716309 1.396899938583374 28.10657501220703 C 3.699226856231689 28.22733306884766 8.357142448425293 28.66976547241211 11.57649803161621 30.29130935668945 C 12.07060813903809 30.54021072387695 12.65647220611572 30.20113563537598 12.65647220611572 29.66536521911621 L 12.65647220611572 16.69355010986328 C 12.65594482421875 16.44728469848633 12.53413200378418 16.22158813476563 12.31792640686035 16.0892276763916 Z M 25.42790031433105 13.5026683807373 C 22.87825584411621 13.64715766906738 17.8100757598877 14.1739616394043 14.6819486618042 16.0892276763916 C 14.46574401855469 16.22158813476563 14.3439302444458 16.45624923706055 14.3439302444458 16.70251274108887 L 14.3439302444458 29.66378021240234 C 14.3439302444458 30.20113182067871 14.93137645721436 30.54073333740234 15.42706871032715 30.29130554199219 C 18.64589881896973 28.67134475708008 23.30117797851563 28.22891426086426 25.60297393798828 28.108154296875 C 26.38869857788086 28.06702423095703 26.99987411499023 27.43686294555664 26.99987411499023 26.68119812011719 L 26.99987411499023 14.93120956420898 C 26.99934768676758 14.10699081420898 26.28481292724609 13.45415496826172 25.42790031433105 13.5026683807373 Z" fill="#009fd9" fill-opacity="0.8" stroke="none" stroke-width="1" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bvqbi1 =
    '<svg viewBox="62.4 374.5 10.1 10.1" ><path transform="translate(51.19, 374.5)" d="M 21.374755859375 5.062377452850342 C 21.374755859375 2.26646876335144 19.10828590393066 0 16.3123779296875 0 C 13.51646900177002 0 11.25 2.26646876335144 11.25 5.062377452850342 C 11.25 7.85828685760498 13.51646900177002 10.12475490570068 16.3123779296875 10.12475490570068 C 19.10828590393066 10.12475490570068 21.374755859375 7.85828685760498 21.374755859375 5.062377452850342 Z" fill="#0089c4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_49zq56 =
    '<svg viewBox="3.0 3.0 30.0 30.0" ><path  d="M 33 16.6200008392334 L 33 18 C 32.99620056152344 24.64302825927734 28.62343978881836 30.4923210144043 22.25302886962891 32.37585067749023 C 15.88261890411377 34.25938415527344 9.03209114074707 31.72846794128418 5.416434288024902 26.15559959411621 C 1.800777435302734 20.58273124694824 2.281296730041504 13.29545783996582 6.597411155700684 8.245607376098633 C 10.9135274887085 3.195758819580078 18.03706932067871 1.586286544799805 24.10500144958496 4.289999008178711" fill="none" stroke="#33b2e0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_uhd6xd =
    '<svg viewBox="13.5 6.0 19.5 15.0" ><path  d="M 33 6 L 18 21.01499938964844 L 13.5 16.51499938964844" fill="none" stroke="#0089c4" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_qh5ksh =
    '<svg viewBox="34.0 752.0 3.9 7.3" ><path transform="translate(302.0, -757.58)" d="M -264.06201171875 1509.572509765625 L -268 1513.510498046875 L -264.06201171875 1516.861572265625" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_xqon9v =
    '<svg viewBox="35.3 755.6 12.7 1.0" ><path transform="translate(-2964.0, 0.0)" d="M 2999.295166015625 755.632568359375 L 3012.04443359375 755.632568359375" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_zeyfg6 =
    '<svg viewBox="282.0 168.6 26.2 11.5" ><path transform="translate(-2687.89, -979.7)" d="M 2969.89306640625 1159.779907226563 L 2996.13818359375 1159.779907226563 C 2996.13818359375 1159.779907226563 2992.75634765625 1148.28076171875 2983.015869140625 1148.28076171875 C 2973.275390625 1148.28076171875 2969.89306640625 1159.779907226563 2969.89306640625 1159.779907226563 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
// import './Assigments5.dart';
import 'package:adobe_xd/page_link.dart';
// import './Assigments8.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Assigments4 extends StatelessWidget {
  Assigments4({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(3.0, 613.0),
            child: Container(
              width: 375.0,
              height: 199.0,
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
          ),
          Transform.translate(
            offset: Offset(3.0, 449.0),
            child: Container(
              width: 375.0,
              height: 177.0,
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
          ),
          Transform.translate(
            offset: Offset(3.0, 291.0),
            child: Container(
              width: 375.0,
              height: 172.0,
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
          ),
          Transform.translate(
            offset: Offset(2.0, 119.0),
            child: Container(
              width: 375.0,
              height: 170.0,
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
          ),
          Container(),
          Container(
            width: 375.0,
            height: 119.0,
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
            offset: Offset(111.0, 63.0),
            child: Text(
              'Assignments',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 22,
                color: const Color(0xff707070),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(23.0, 202.0),
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
                      _svg_bm8ne9,
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
            offset: Offset(292.0, 350.0),
            child: SizedBox(
              width: 55.0,
              height: 55.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
                    size: Size(55.0, 55.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.5, 16.0, 22.5, 23.2),
                    size: Size(55.0, 55.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.5, 0.0, 11.0, 11.0),
                          size: Size(22.5, 23.2),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff0089c4),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 13.3, 22.5, 9.9),
                          size: Size(22.5, 23.2),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_m2oh1d,
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
            offset: Offset(292.0, 518.0),
            child: SizedBox(
              width: 55.0,
              height: 55.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
                    size: Size(55.0, 55.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.5, 16.0, 22.5, 23.2),
                    size: Size(55.0, 55.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.5, 0.0, 11.0, 11.0),
                          size: Size(22.5, 23.2),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff0089c4),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 13.3, 22.5, 9.9),
                          size: Size(22.5, 23.2),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_m2oh1d,
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
            offset: Offset(292.0, 686.0),
            child: SizedBox(
              width: 55.0,
              height: 55.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
                    size: Size(55.0, 55.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.5, 16.0, 22.5, 23.2),
                    size: Size(55.0, 55.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.5, 0.0, 11.0, 11.0),
                          size: Size(22.5, 23.2),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff0089c4),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 13.3, 22.5, 9.9),
                          size: Size(22.5, 23.2),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_m2oh1d,
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
            offset: Offset(170.0, 356.0),
            child: SizedBox(
              width: 104.0,
              height: 23.0,
              child: Text(
                'Assignment #',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 19,
                  color: const Color(0xff66778e),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(170.0, 518.0),
            child: SizedBox(
              width: 104.0,
              height: 23.0,
              child: Text(
                'Assignment #',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 19,
                  color: const Color(0xff66778e),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(170.0, 686.0),
            child: SizedBox(
              width: 104.0,
              height: 23.0,
              child: Text(
                'Assignment #',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 19,
                  color: const Color(0xff66778e),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(88.0, 190.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  // pageBuilder: () => Assigments5(),
                ),
              ],
              child: SizedBox(
                width: 258.0,
                height: 57.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(203.0, 2.0, 55.0, 55.0),
                      size: Size(258.0, 57.0),
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
                            size: Size(55.0, 55.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
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
                            bounds: Rect.fromLTWH(16.5, 16.0, 22.5, 23.2),
                            size: Size(55.0, 55.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(6.5, 0.0, 11.0, 11.0),
                                  size: Size(22.5, 23.2),
                                  pinTop: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xff0089c4),
                                    ),
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 13.3, 22.5, 9.9),
                                  size: Size(22.5, 23.2),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinBottom: true,
                                  fixedHeight: true,
                                  child: SvgPicture.string(
                                    _svg_m2oh1d,
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
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(81.0, 0.0, 104.0, 23.0),
                      size: Size(258.0, 57.0),
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Assignment #',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          fontSize: 19,
                          color: const Color(0xff66778e),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 32.0, 185.0, 23.0),
                      size: Size(258.0, 57.0),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Label' (text)
                          Text(
                        'Professor Rupert Grint',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          fontSize: 19,
                          color: const Color(0xff707070),
                          letterSpacing: 0.361,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(89.0, 388.0),
            child:
                // Adobe XD layer: 'Label' (text)
                SizedBox(
              width: 185.0,
              height: 23.0,
              child: Text(
                'Professor Rupert Grint',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 19,
                  color: const Color(0xff707070),
                  letterSpacing: 0.361,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(89.0, 550.0),
            child:
                // Adobe XD layer: 'Label' (text)
                SizedBox(
              width: 185.0,
              height: 23.0,
              child: Text(
                'Professor Rupert Grint',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 19,
                  color: const Color(0xff707070),
                  letterSpacing: 0.361,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(89.0, 718.0),
            child:
                // Adobe XD layer: 'Label' (text)
                SizedBox(
              width: 185.0,
              height: 23.0,
              child: Text(
                'Professor Rupert Grint',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 19,
                  color: const Color(0xff707070),
                  letterSpacing: 0.361,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          SizedBox(
            width: 72.0,
            height: 812.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 72.0, 812.0),
                  size: Size(72.0, 812.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
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
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(22.0, 618.0, 30.0, 30.0),
                  size: Size(72.0, 812.0),
                  pinRight: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Icon feather-settin…' (group)
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
                          _svg_iqybcr,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(10.9, 10.9, 8.2, 8.2),
                        size: Size(30.0, 30.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_2f9w0t,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(23.0, 689.8, 26.6, 26.6),
                  size: Size(72.0, 812.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Icon ionic-ios-chat…' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(7.6, 7.8, 19.0, 18.8),
                        size: Size(26.6, 26.6),
                        pinRight: true,
                        pinBottom: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_pm65mx,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 19.4, 14.7),
                        size: Size(26.6, 26.6),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_t2zo6l,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(21.0, 760.8, 30.6, 29.4),
                  size: Size(72.0, 812.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Icon simple-minutem…' (shape)
                      SvgPicture.string(
                    _svg_hbzd38,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(19.0, 72.0, 32.0, 301.0),
                  size: Size(72.0, 812.0),
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 32.0, 22.0),
                        size: Size(32.0, 301.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        fixedHeight: true,
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              // pageBuilder: () => Assigments8(),
                            ),
                          ],
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
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(2.0, 67.0, 28.0, 24.0),
                        size: Size(32.0, 301.0),
                        pinLeft: true,
                        pinRight: true,
                        fixedHeight: true,
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
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(4.0, 274.0, 24.0, 27.0),
                        size: Size(32.0, 301.0),
                        pinLeft: true,
                        pinRight: true,
                        pinBottom: true,
                        fixedHeight: true,
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
                                      width: 1.0,
                                      color: const Color(0xff707070)),
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
                                      width: 1.0,
                                      color: const Color(0xff707070)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(2.0, 212.0, 27.4, 17.2),
                        size: Size(32.0, 301.0),
                        pinLeft: true,
                        pinRight: true,
                        fixedHeight: true,
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
                                _svg_g2edss,
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
                                _svg_9pdbss,
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
              ],
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
            offset: Offset(22.9, 204.0),
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
                      _svg_au20ux,
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
                      _svg_xvebqj,
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

const String _svg_bm8ne9 =
    '<svg viewBox="54.0 384.6 27.0 16.9" ><path transform="translate(54.0, 371.12)" d="M 12.31792640686035 16.0892276763916 C 9.189270973205566 14.1739616394043 4.121619701385498 13.64768409729004 1.571446895599365 13.5026683807373 C 0.7145335078239441 13.45415496826172 0 14.10699081420898 0 14.93120956420898 L 0 26.68014526367188 C 0 27.43581008911133 0.6111766695976257 28.06596946716309 1.396899938583374 28.10657501220703 C 3.699226856231689 28.22733306884766 8.357142448425293 28.66976547241211 11.57649803161621 30.29130935668945 C 12.07060813903809 30.54021072387695 12.65647220611572 30.20113563537598 12.65647220611572 29.66536521911621 L 12.65647220611572 16.69355010986328 C 12.65594482421875 16.44728469848633 12.53413200378418 16.22158813476563 12.31792640686035 16.0892276763916 Z M 25.42790031433105 13.5026683807373 C 22.87825584411621 13.64715766906738 17.8100757598877 14.1739616394043 14.6819486618042 16.0892276763916 C 14.46574401855469 16.22158813476563 14.3439302444458 16.45624923706055 14.3439302444458 16.70251274108887 L 14.3439302444458 29.66378021240234 C 14.3439302444458 30.20113182067871 14.93137645721436 30.54073333740234 15.42706871032715 30.29130554199219 C 18.64589881896973 28.67134475708008 23.30117797851563 28.22891426086426 25.60297393798828 28.108154296875 C 26.38869857788086 28.06702423095703 26.99987411499023 27.43686294555664 26.99987411499023 26.68119812011719 L 26.99987411499023 14.93120956420898 C 26.99934768676758 14.10699081420898 26.28481292724609 13.45415496826172 25.42790031433105 13.5026683807373 Z" fill="#0089c4" fill-opacity="0.8" stroke="none" stroke-width="1" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bvqbi1 =
    '<svg viewBox="62.4 374.5 10.1 10.1" ><path transform="translate(51.19, 374.5)" d="M 21.374755859375 5.062377452850342 C 21.374755859375 2.26646876335144 19.10828590393066 0 16.3123779296875 0 C 13.51646900177002 0 11.25 2.26646876335144 11.25 5.062377452850342 C 11.25 7.85828685760498 13.51646900177002 10.12475490570068 16.3123779296875 10.12475490570068 C 19.10828590393066 10.12475490570068 21.374755859375 7.85828685760498 21.374755859375 5.062377452850342 Z" fill="#0089c4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m2oh1d =
    '<svg viewBox="0.0 13.4 22.5 9.9" ><path transform="translate(-2969.89, -1134.93)" d="M 2969.893310546875 1158.139404296875 L 2992.39404296875 1158.139404296875 C 2992.39404296875 1158.139404296875 2989.49462890625 1148.28076171875 2981.143798828125 1148.28076171875 C 2972.79296875 1148.28076171875 2969.893310546875 1158.139404296875 2969.893310546875 1158.139404296875 Z" fill="#0089c4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iqybcr =
    '<svg viewBox="0.0 0.0 30.0 30.0" ><path transform="translate(-1.5, -1.5)" d="M 26.57743072509766 20.58065605163574 C 26.20624923706055 21.42168998718262 26.38435363769531 22.40396881103516 27.02718734741211 23.06114196777344 L 27.10896301269531 23.14291572570801 C 27.62080764770508 23.65419387817383 27.90840721130371 24.34797286987305 27.90840721130371 25.07142639160156 C 27.90840721130371 25.79487991333008 27.62080764770508 26.4886589050293 27.10896492004395 26.99993515014648 C 26.59769058227539 27.51177787780762 25.90391159057617 27.79937553405762 25.18045806884766 27.79937553405762 C 24.45700645446777 27.79937553405762 23.76322746276855 27.51177787780762 23.25195121765137 26.99993515014648 L 23.17017364501953 26.91815757751465 C 22.51300048828125 26.27532196044922 21.53072357177734 26.09721755981445 20.68968963623047 26.46839714050293 C 19.8658561706543 26.82148551940918 19.33036231994629 27.63008117675781 19.32678413391113 28.5263843536377 L 19.32678413391113 28.75807952880859 C 19.32678413391113 30.26350021362305 18.10639953613281 31.48388862609863 16.60097694396973 31.48388862609863 C 15.09555435180664 31.48388862609863 13.875168800354 30.26350021362305 13.875168800354 28.75807952880859 L 13.875168800354 28.63541793823242 C 13.85357570648193 27.71228408813477 13.26986408233643 26.89616966247559 12.40323162078857 26.57743644714355 C 11.5621976852417 26.20625114440918 10.57991981506348 26.38435554504395 9.922745704650879 27.02719116210938 L 9.840971946716309 27.10896682739258 C 9.329697608947754 27.62081146240234 8.635917663574219 27.90841102600098 7.912463188171387 27.90841102600098 C 7.189008712768555 27.90841102600098 6.495229721069336 27.62081146240234 5.983954429626465 27.10896682739258 C 5.472110748291016 26.59769248962402 5.184513092041016 25.90391540527344 5.184513092041016 25.18045997619629 C 5.184513092041016 24.45700645446777 5.472110748291016 23.76322746276855 5.983954429626465 23.25195121765137 L 6.065728187561035 23.17017555236816 C 6.708561897277832 22.51300430297852 6.88666820526123 21.53072738647461 6.515486717224121 20.68969345092773 C 6.162402153015137 19.86585807800293 5.353806495666504 19.33036422729492 4.457501411437988 19.3267879486084 L 4.225807189941406 19.32678604125977 C 2.720386028289795 19.32678604125977 1.500000357627869 18.10640144348145 1.5 16.60097885131836 C 1.5 15.09555625915527 2.720386028289795 13.87517070770264 4.225808143615723 13.87517070770264 L 4.348468780517578 13.87517070770264 C 5.271604537963867 13.85357856750488 6.087718963623047 13.26986598968506 6.406454086303711 12.40323352813721 C 6.77763557434082 11.56219863891602 6.599530220031738 10.57992172241211 5.956695556640625 9.922747611999512 L 5.874920845031738 9.840972900390625 C 5.363078117370605 9.32969856262207 5.075478553771973 8.635919570922852 5.075478553771973 7.912464618682861 C 5.075478553771973 7.189009189605713 5.363077163696289 6.495229721069336 5.874921798706055 5.983954429626465 C 6.386197090148926 5.472110748291016 7.079976081848145 5.184511661529541 7.803430557250977 5.184512138366699 C 8.526885032653809 5.184512138366699 9.220664024353027 5.472110748291016 9.731938362121582 5.983954906463623 L 9.813713073730469 6.065728664398193 C 10.47088813781738 6.708563804626465 11.45316410064697 6.886668682098389 12.29419803619385 6.515487194061279 L 12.40323066711426 6.515487194061279 C 13.22706699371338 6.162402153015137 13.76255989074707 5.353806018829346 13.76613426208496 4.457501888275146 L 13.76613426208496 4.225807666778564 C 13.76613426208496 2.720385789871216 14.9865198135376 1.499999642372131 16.49194145202637 1.5 C 17.99736404418945 1.5 19.21775054931641 2.720386028289795 19.21775054931641 4.225807666778564 L 19.21775054931641 4.348469257354736 C 19.2213249206543 5.244774341583252 19.75682067871094 6.053369998931885 20.58065605163574 6.406455039978027 C 21.42168807983398 6.777637004852295 22.40396499633789 6.599531650543213 23.0611400604248 5.956696510314941 L 23.14291191101074 5.874922275543213 C 23.65419006347656 5.363079071044922 24.34796905517578 5.075480937957764 25.0714225769043 5.075480937957764 C 25.79487609863281 5.075480937957764 26.48865509033203 5.36307954788208 26.99992942810059 5.874922275543213 C 27.51177406311035 6.386198043823242 27.79937171936035 7.079977512359619 27.79937171936035 7.803431510925293 C 27.79937171936035 8.526886940002441 27.51177406311035 9.22066593170166 26.99992942810059 9.731941223144531 L 26.91815567016602 9.813714981079102 C 26.27531814575195 10.47088813781738 26.09721374511719 11.45316505432129 26.46839332580566 12.2942008972168 L 26.4683952331543 12.40323257446289 C 26.82148170471191 13.22706890106201 27.63007736206055 13.76256084442139 28.52638053894043 13.76613616943359 L 28.75807571411133 13.76613616943359 C 30.26349639892578 13.76613616943359 31.48388481140137 14.98652172088623 31.48388481140137 16.491943359375 C 31.48388481140137 17.99736595153809 30.26349639892578 19.21775245666504 28.75807571411133 19.21775245666504 L 28.63541412353516 19.21775245666504 C 27.73911285400391 19.22132873535156 26.93051719665527 19.75682258605957 26.57743453979492 20.58065795898438 Z" fill="#b8b6b6" stroke="none" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_2f9w0t =
    '<svg viewBox="10.9 10.9 8.2 8.2" ><path transform="translate(-2.6, -2.6)" d="M 21.67742347717285 17.58871078491211 C 21.67742347717285 19.84684371948242 19.84684371948242 21.67742347717285 17.58871078491211 21.67742347717285 C 15.33057880401611 21.67742347717285 13.5 19.84684371948242 13.5 17.58871078491211 C 13.5 15.33057975769043 15.33057880401611 13.50000095367432 17.58871078491211 13.50000095367432 C 19.84684371948242 13.50000095367432 21.67742347717285 15.33057975769043 21.67742347717285 17.58871078491211 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_pm65mx =
    '<svg viewBox="7.6 7.8 19.0 18.8" ><path transform="translate(-4.13, -4.16)" d="M 28.27716255187988 11.98124980926514 L 14.11999797821045 11.98124980926514 C 12.77838897705078 11.98124980926514 11.68593692779541 13.07370281219482 11.68593692779541 14.41531181335449 L 11.68593692779541 24.27293968200684 C 11.68593692779541 25.61454963684082 12.77838897705078 26.70061302185059 14.11999797821045 26.70061302185059 L 22.22075843811035 26.70061302185059 C 22.39963912963867 26.70061302185059 22.57851982116699 26.77727699279785 22.70629119873047 26.90504837036133 L 26.73111724853516 30.6168327331543 C 26.9547176361084 30.83404541015625 27.32525825500488 30.74460411071777 27.32525825500488 30.43156051635742 L 27.32525825500488 27.19892501831055 C 27.32525825500488 26.81560707092285 27.56802368164063 26.69422340393066 27.95134162902832 26.69422340393066 L 28.01522636413574 26.69422340393066 C 29.35683631896973 26.69422340393066 30.70483207702637 25.61454772949219 30.70483207702637 24.26655006408691 L 30.70483207702637 14.41531181335449 C 30.71122360229492 13.06731414794922 29.61877059936523 11.98124980926514 28.27716255187988 11.98124980926514 Z" fill="#b8b6b6" stroke="#b8b6b6" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t2zo6l =
    '<svg viewBox="0.0 0.0 19.4 14.7" ><path transform="translate(-3.37, -3.38)" d="M 11.45020484924316 9.629451751708984 L 22.78360176086426 9.629451751708984 L 22.78360176086426 5.457687854766846 C 22.78360176086426 4.307737827301025 21.85086441040039 3.375000476837158 20.70091438293457 3.375000476837158 L 5.457687377929688 3.375000476837158 C 4.307737350463867 3.375000238418579 3.375 4.307737827301025 3.375 5.457687854766846 L 3.375 16.01167678833008 C 3.375 17.1616268157959 4.307737350463867 18.09436416625977 5.457687377929688 18.09436416625977 L 9.361128807067871 18.09436416625977 L 9.361128807067871 11.71214008331299 C 9.36751651763916 10.56218910217285 10.30025386810303 9.629451751708984 11.45020484924316 9.629451751708984 Z" fill="#b8b6b6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yy8juy =
    '<svg viewBox="18.0 55.8 32.0 4.6" ><path transform="translate(18.0, 54.4)" d="M 0 1.446044921875 L 32 1.446044921875 L 32 6 L 0 6 L 0 1.446044921875 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e68r4i =
    '<svg viewBox="21.0 120.0 28.0 14.0" ><path transform="translate(21.0, 120.0)" d="M 13.99999904632568 0 L 28 14 L 0 14 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g2edss =
    '<svg viewBox="18.0 252.0 27.0 7.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 45.0, 259.0)" d="M 13.49999809265137 0 L 26.99999809265137 7 L 0 7 Z" fill="#9d9c9c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9pdbss =
    '<svg viewBox="18.0 254.0 27.4 15.2" ><path transform="translate(807.0, -3029.0)" d="M -789 3282.97998046875 L -789 3298.218994140625 L -761.595703125 3298.218994140625 L -761.595703125 3282.97998046875 L -775.2601928710938 3290.0654296875 L -789 3282.97998046875 Z" fill="#9d9c9c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hbzd38 =
    '<svg viewBox="21.0 760.8 30.6 29.4" ><path transform="translate(13.42, 756.78)" d="M 7.583195686340332 4.054500102996826 L 13.30991649627686 12.34484100341797 L 9.269674301147461 22.99750709533691 L 17.80165863037109 20.95267486572266 L 21.68586921691895 33.48809432983398 L 38.18546676635742 4.549611568450928 L 7.583195686340332 4.054500102996826 Z M 13.7713737487793 17.63787269592285 L 16.42392539978027 11.37460041046143 L 32.02384567260742 6.48787260055542 L 13.7713737487793 17.63786888122559 Z" fill="#b8b6b6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_au20ux =
    '<svg viewBox="0.0 10.1 27.0 16.9" ><path transform="translate(0.0, -3.38)" d="M 12.31792640686035 16.0892276763916 C 9.189270973205566 14.1739616394043 4.121619701385498 13.64768409729004 1.571446895599365 13.5026683807373 C 0.7145335078239441 13.45415496826172 0 14.10699081420898 0 14.93120956420898 L 0 26.68014526367188 C 0 27.43581008911133 0.6111766695976257 28.06596946716309 1.396899938583374 28.10657501220703 C 3.699226856231689 28.22733306884766 8.357142448425293 28.66976547241211 11.57649803161621 30.29130935668945 C 12.07060813903809 30.54021072387695 12.65647220611572 30.20113563537598 12.65647220611572 29.66536521911621 L 12.65647220611572 16.69355010986328 C 12.65594482421875 16.44728469848633 12.53413200378418 16.22158813476563 12.31792640686035 16.0892276763916 Z M 25.42790031433105 13.5026683807373 C 22.87825584411621 13.64715766906738 17.8100757598877 14.1739616394043 14.6819486618042 16.0892276763916 C 14.46574401855469 16.22158813476563 14.3439302444458 16.45624923706055 14.3439302444458 16.70251274108887 L 14.3439302444458 29.66378021240234 C 14.3439302444458 30.20113182067871 14.93137645721436 30.54073333740234 15.42706871032715 30.29130554199219 C 18.64589881896973 28.67134475708008 23.30117797851563 28.22891426086426 25.60297393798828 28.108154296875 C 26.38869857788086 28.06702423095703 26.99987411499023 27.43686294555664 26.99987411499023 26.68119812011719 L 26.99987411499023 14.93120956420898 C 26.99934768676758 14.10699081420898 26.28481292724609 13.45415496826172 25.42790031433105 13.5026683807373 Z" fill="#0089c4" fill-opacity="0.8" stroke="none" stroke-width="1" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xvebqj =
    '<svg viewBox="8.4 0.0 10.1 10.1" ><path transform="translate(-2.81, 0.0)" d="M 21.374755859375 5.062377452850342 C 21.374755859375 2.26646876335144 19.10828590393066 0 16.3123779296875 0 C 13.51646900177002 0 11.25 2.26646876335144 11.25 5.062377452850342 C 11.25 7.85828685760498 13.51646900177002 10.12475490570068 16.3123779296875 10.12475490570068 C 19.10828590393066 10.12475490570068 21.374755859375 7.85828685760498 21.374755859375 5.062377452850342 Z" fill="#0089c4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

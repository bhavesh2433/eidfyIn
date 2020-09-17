import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './login.dart';
import 'package:adobe_xd/page_link.dart';
import './registration.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthenticationScreen extends StatelessWidget {
  AuthenticationScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0, 2.0),
            child:
            // Adobe XD layer: 'Layer 2' (group)
            SizedBox(
              width: 375.0,
              height: 813.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 374.8, 812.6),
                    size: Size(374.8, 812.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.2, 0.0, 372.6, 357.9),
                          size: Size(374.8, 812.6),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 372.6, 357.9),
                                size: Size(372.6, 357.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_srcbip,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(84.1, 277.4, 290.8, 300.8),
                          size: Size(374.8, 812.6),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 290.8, 300.8),
                                size: Size(290.8, 300.8),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_gz218u,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 473.5, 182.8, 339.2),
                          size: Size(374.8, 812.6),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_tvu4wk,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.6, 31.3, 348.2, 548.0),
                    size: Size(374.8, 812.6),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(110.0, 233.8),
            child:
            // Adobe XD layer: 'Layer 1' (group)
            SizedBox(
              width: 120.0,
              height: 99.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 119.6, 99.4),
                    size: Size(119.6, 99.4),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 65.6, 119.6, 33.8),
                          size: Size(119.6, 99.4),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(66.3, 12.6, 17.7, 21.1),
                                size: Size(119.6, 33.8),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 17.7, 21.1),
                                      size: Size(17.7, 21.1),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_7bdx84,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(66.3, 8.0, 4.8, 6.5),
                                size: Size(119.6, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 6.5),
                                      size: Size(4.8, 6.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_o1o4tr,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(79.2, 8.0, 4.8, 8.6),
                                size: Size(119.6, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.8, 8.6),
                                      size: Size(4.8, 8.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_q0w6o2,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.4, 0.4, 17.4, 18.2),
                                size: Size(119.6, 33.8),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 17.4, 18.2),
                                      size: Size(17.4, 18.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_shaukt,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.3, 13.9, 17.5, 12.6),
                                size: Size(119.6, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 17.5, 12.6),
                                      size: Size(17.5, 12.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_ck0uci,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(51.9, 13.6, 4.9, 12.5),
                                size: Size(119.6, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 4.9, 12.5),
                                      size: Size(4.9, 12.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_6g82eh,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(51.9, 0.0, 12.5, 15.4),
                                size: Size(119.6, 33.8),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 12.5, 15.4),
                                      size: Size(12.5, 15.4),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_8x6jva,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(89.2, 19.3, 4.9, 6.6),
                                size: Size(119.6, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.9, 6.6),
                                      size: Size(4.9, 6.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_y2dcof,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(89.2, 7.9, 4.9, 11.6),
                                size: Size(119.6, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 4.9, 11.6),
                                      size: Size(4.9, 11.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_wll18l,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(42.4, 17.1, 4.9, 9.0),
                                size: Size(119.6, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 4.9, 9.0),
                                      size: Size(4.9, 9.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_mskyev,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(42.4, 8.0, 4.9, 10.5),
                                size: Size(119.6, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 4.9, 10.5),
                                      size: Size(4.9, 10.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_wg9ibz,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 2.3, 18.5, 24.0),
                                size: Size(119.6, 33.8),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 18.1, 17.7),
                                      size: Size(18.5, 24.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 18.1, 17.7),
                                            size: Size(18.1, 17.7),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_lwlew8,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 17.0, 18.5, 7.0),
                                      size: Size(18.5, 24.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 18.5, 7.0),
                                            size: Size(18.5, 7.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_l7dssf,
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
                                bounds: Rect.fromLTWH(99.5, 1.9, 20.1, 24.8),
                                size: Size(119.6, 33.8),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 20.1, 15.6),
                                      size: Size(20.1, 24.8),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 20.1, 15.6),
                                            size: Size(20.1, 15.6),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_8hsnl4,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(8.7, 14.3, 11.4, 10.5),
                                      size: Size(20.1, 24.8),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 11.4, 10.5),
                                            size: Size(11.4, 10.5),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_bgk15k,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 10.0, 4.6, 14.9),
                                      size: Size(20.1, 24.8),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 4.6, 14.9),
                                            size: Size(4.6, 14.9),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: SvgPicture.string(
                                              _svg_blz6vf,
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(27.6, 0.0, 57.3, 53.6),
                          size: Size(119.6, 99.4),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 57.3, 53.6),
                                size: Size(57.3, 53.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_qxyq27,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(58.3, 16.2, 45.4, 43.6),
                          size: Size(119.6, 99.4),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.0, 3.3, 25.7, 34.6),
                                size: Size(45.4, 43.6),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 25.7, 34.6),
                                      size: Size(25.7, 34.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_n9x81g,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.0, 1.3, 43.5, 41.6),
                                size: Size(45.4, 43.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 43.5, 41.6),
                                      size: Size(43.5, 41.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_c7rtr4,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 45.4, 43.6),
                                size: Size(45.4, 43.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 45.4, 43.6),
                                      size: Size(45.4, 43.6),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_5z0py2,
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
                          bounds: Rect.fromLTWH(20.6, 25.3, 21.0, 35.2),
                          size: Size(119.6, 99.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.1, 1.5, 12.9, 26.3),
                                size: Size(21.0, 35.2),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 12.9, 26.3),
                                      size: Size(12.9, 26.3),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_bl35c4,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.0, 1.3, 18.9, 33.2),
                                size: Size(21.0, 35.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 18.9, 33.2),
                                      size: Size(18.9, 33.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_478wxb,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 21.0, 35.2),
                                size: Size(21.0, 35.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(0.0, 0.0, 21.0, 35.2),
                                      size: Size(21.0, 35.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_57wr5k,
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
                          bounds: Rect.fromLTWH(42.2, 65.7, 5.2, 5.2),
                          size: Size(119.6, 99.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 5.2, 5.2),
                                size: Size(5.2, 5.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_74yre5,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(89.1, 65.5, 5.2, 5.2),
                          size: Size(119.6, 99.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 5.2, 5.2),
                                size: Size(5.2, 5.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_myikxa,
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
          ),
          Transform.translate(
            offset: Offset(31.0, 378.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Login(),
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
                      bounds: Rect.fromLTWH(110.0, 16.0, 67.0, 28.0),
                      size: Size(292.0, 65.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Log In  ',
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
          ),
          Transform.translate(
            offset: Offset(31.0, 472.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => registration(),
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
                          color: const Color(0xff0089c4),
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
                      bounds: Rect.fromLTWH(100.0, 16.0, 77.0, 28.0),
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
          ),
        ],
      ),
    );
  }
}

const String _svg_srcbip =
    '<svg viewBox="0.0 24.4 372.6 357.9" ><path transform="translate(-4.88, -177.39)" d="M 68.51914978027344 207.051513671875 L 348.8158569335938 260.2529602050781 C 348.8158569335938 260.2529602050781 377.2586669921875 263.0778503417969 377.2586669921875 292.2675476074219 L 377.2586669921875 533.3212280273438 C 377.2586669921875 533.3212280273438 383.2223815917969 560.1572265625 330.9247436523438 559.6860961914063 C 278.6270751953125 559.215576171875 37.32427597045898 552.1536865234375 37.32427597045898 552.1536865234375 C 37.32427597045898 552.1536865234375 5.211436748504639 551.6826171875 5.211436748504639 488.1232604980469 L 5.211436748504639 235.3002471923828 C 5.211436748504639 235.3002471923828 -3.504327535629272 185.8653259277344 68.51914978027344 207.051513671875" fill="#4fc7f3" fill-opacity="0.06" stroke="none" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_gz218u =
    '<svg viewBox="0.0 0.0 290.8 300.8" ><path transform="translate(-322.9, -435.79)" d="M 563.998779296875 440.2264099121094 L 345.2608642578125 484.9333190917969 L 345.2529296875 484.9345397949219 C 344.9962158203125 484.963134765625 323.0584716796875 487.4518127441406 323.0584716796875 511.8387145996094 L 323.0584716796875 714.4098510742188 C 323.0584716796875 714.4098510742188 318.4044799804688 736.9619140625 359.2176513671875 736.56591796875 C 400.0308227539063 736.1705932617188 588.3435668945313 730.2359619140625 588.3435668945313 730.2359619140625 C 588.3435668945313 730.2359619140625 613.4041137695313 729.8401489257813 613.4041137695313 676.4276733398438 L 613.4041137695313 463.9649963378906 C 613.4041137695313 463.9649963378906 620.2063598632813 422.4224853515625 563.998779296875 440.2264099121094" fill="#177eb0" fill-opacity="0.06" stroke="none" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tvu4wk =
    '<svg viewBox="0.0 497.8 182.8 339.2" ><path transform="translate(183.32, 108.4)" d="M -1.202117919921875 689.7034912109375 L -1.202117919921875 673.0969848632813 C -1.202117919921875 672.4208984375 -0.9652442932128906 671.9002075195313 -0.6023025512695313 671.5265502929688 L -1.273345947265625 469.6636352539063 C -1.273345947265625 469.6636352539063 10.59738540649414 416.1797485351563 -58.00275039672852 406.65625 C -126.6034545898438 397.1327514648438 -170.7170257568359 366.0482788085938 -183.3209838867188 422.0003662109375 L -183.3209838867188 689.3286743164063 C -183.3209838867188 689.3286743164063 -175.7060394287109 713.6173706054688 -160.6072998046875 723.2318725585938 C -145.5090942382813 732.846923828125 -38.3757438659668 726.6300659179688 -38.3757438659668 726.6300659179688 C -38.3757438659668 726.6300659179688 -13.77724838256836 726.625 -1.029689788818359 690.6651000976563 C -1.137672424316406 690.388671875 -1.202117919921875 690.0709228515625 -1.202117919921875 689.7034912109375 Z" fill="#0098cd" fill-opacity="0.06" stroke="none" stroke-width="1" stroke-opacity="0.06" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7bdx84 =
    '<svg viewBox="0.0 0.0 17.7 21.1" ><path transform="translate(-318.02, -464.73)" d="M 335.71142578125 478.962890625 C 335.7026062011719 480.9204711914063 335.0551147460938 482.6082763671875 333.5494079589844 483.9178771972656 C 332.5302124023438 484.8027648925781 331.2984008789063 485.3052673339844 330.0235290527344 485.5479125976563 C 327.5693359375 486.0163269042969 325.0968322753906 486.0062561035156 322.6708374023438 485.2669677734375 C 322.5607604980469 485.2333068847656 322.444091796875 485.2204284667969 322.3298034667969 485.197998046875 C 321.4390563964844 485.0242004394531 321.0001525878906 484.5005493164063 320.9989624023438 483.6103820800781 C 320.9971923828125 483.1880187988281 320.9919128417969 482.7650146484375 321.0001525878906 482.3414306640625 C 321.0101928710938 481.7781982421875 321.2882385253906 481.4436340332031 321.864990234375 481.474853515625 C 322.37158203125 481.5019226074219 322.8759155273438 481.5932312011719 323.3807678222656 481.6609802246094 C 324.3674926757813 481.7912292480469 325.362548828125 482.0745544433594 326.3387145996094 482.0209045410156 C 327.7984924316406 481.9419860839844 329.3631591796875 482.0038757324219 330.4288940429688 480.6365356445313 C 330.8919067382813 480.0427551269531 330.8989868164063 479.3776245117188 330.8565673828125 478.7001342773438 C 330.8495178222656 478.5858459472656 330.5714721679688 478.40380859375 330.4147033691406 478.3997192382813 C 329.3478698730469 478.3702697753906 328.2780456542969 478.3731994628906 327.2099609375 478.3785095214844 C 325.5333862304688 478.3884887695313 323.9592895507813 478.0526733398438 322.3957824707031 477.3793640136719 C 320.2579040527344 476.4609069824219 319.0979309082031 474.822021484375 318.5259399414063 472.7054138183594 C 318.2384033203125 471.6414489746094 318.0776062011719 470.5150451660156 318.0505065917969 469.4128112792969 C 318.0110473632813 467.8534851074219 318.0192260742188 466.2911987304688 318.0392761230469 464.7299499511719 C 318.4699401855469 464.87548828125 318.9200134277344 465.05224609375 319.3971862792969 465.2566223144531 C 320.4469909667969 465.7066955566406 321.6252136230469 466.1739196777344 322.8517456054688 466.6145324707031 C 322.8546752929688 467.7037963867188 322.8647155761719 468.7931213378906 322.8941040039063 469.8811645507813 C 322.9206848144531 470.9103393554688 323.1421813964844 471.9194641113281 323.7306823730469 472.8508605957031 C 324.2815246582031 473.7227172851563 325.1068420410156 474.1351318359375 325.9804992675781 474.22119140625 C 327.4479370117188 474.36669921875 328.940185546875 474.2588500976563 330.4217834472656 474.2677001953125 C 330.9578552246094 474.2706909179688 330.8594970703125 473.8835754394531 330.8618774414063 473.5731201171875 C 330.8718872070313 471.9347839355469 330.8789367675781 470.2976379394531 330.8848571777344 468.6593627929688 C 332.4512939453125 468.8071899414063 333.7409057617188 468.6805419921875 334.4972534179688 468.1297302246094 C 334.9826965332031 467.7775268554688 335.375 467.686767578125 335.6943359375 467.7656860351563 C 335.6943359375 468.7229919433594 335.6954956054688 469.6808776855469 335.6954956054688 470.6375732421875 L 335.7137756347656 470.6375732421875 C 335.7137756347656 473.4140319824219 335.7226257324219 476.1881408691406 335.71142578125 478.962890625 Z" fill="#982a20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_o1o4tr =
    '<svg viewBox="0.0 0.0 4.8 6.5" ><path transform="translate(-318.05, -456.89)" d="M 322.8634948730469 458.6181030273438 C 322.8704833984375 460.21044921875 322.8592834472656 461.8004455566406 322.8634948730469 463.3928527832031 C 321.6369018554688 462.9521484375 320.4586486816406 462.4850158691406 319.4088745117188 462.034912109375 C 318.9317016601563 461.83056640625 318.4816284179688 461.6537170410156 318.0509643554688 461.5082702636719 C 318.0622253417969 460.694091796875 318.0763549804688 459.8811340332031 318.0893249511719 459.0681457519531 C 318.0987548828125 458.3500671386719 318.1146240234375 457.4946899414063 318.866943359375 457.1817932128906 C 319.5072937011719 456.9161376953125 320.2767028808594 456.9391479492188 320.9918212890625 456.8908386230469 C 321.2816772460938 456.87255859375 321.5791320800781 457.0092163085938 321.8742980957031 457.0746459960938 C 322.4063110351563 457.1942138671875 322.8605041503906 457.8858337402344 322.8634948730469 458.6181030273438 Z" fill="#bf3627" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_q0w6o2 =
    '<svg viewBox="0.0 0.0 4.8 8.6" ><path transform="translate(-339.86, -456.86)" d="M 344.6654357910156 464.5303955078125 C 344.3461608886719 464.451416015625 343.9537963867188 464.5421142578125 343.4683837890625 464.8944091796875 C 342.7119445800781 465.4453125 341.4223937988281 465.5719604492188 339.8559265136719 465.4240417480469 C 339.8600463867188 464.6870727539063 339.8612060546875 463.9488830566406 339.8641967773438 463.2125244140625 C 339.8683166503906 461.8717041015625 339.8641967773438 460.5326538085938 339.8653869628906 459.1918640136719 C 339.8653869628906 457.4598999023438 340.2719116210938 456.9721069335938 341.9950256347656 456.8648986816406 C 342.6076354980469 456.8265991210938 343.2792358398438 456.9137268066406 343.8424377441406 457.1452941894531 C 344.4280090332031 457.385009765625 344.6736450195313 457.9806823730469 344.6707153320313 458.6558227539063 C 344.6636657714844 460.6145629882813 344.6636657714844 462.5715942382813 344.6654357910156 464.5303955078125 Z" fill="#bf3627" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_shaukt =
    '<svg viewBox="0.0 0.0 17.4 18.2" ><path transform="translate(-240.07, -443.91)" d="M 257.4755554199219 455.2865905761719 L 257.4631958007813 455.2865905761719 C 257.4631958007813 452.041748046875 257.46435546875 448.7987060546875 257.4602355957031 445.554443359375 C 257.4602355957031 444.6454162597656 256.957763671875 443.9650573730469 256.2425537109375 443.9385375976563 C 255.491455078125 443.9102478027344 254.7320556640625 443.8778686523438 253.9868469238281 443.9508666992188 C 253.3930358886719 444.0086364746094 252.8498229980469 444.2419128417969 252.8309936523438 445.0177917480469 C 252.7915344238281 446.865234375 252.67724609375 448.7126770019531 252.7025756835938 450.558349609375 C 252.71142578125 451.1981201171875 252.5293579101563 451.3247680664063 251.9732666015625 451.3389282226563 C 250.4574584960938 451.3801574707031 248.9434814453125 451.4702758789063 247.4276733398438 451.5209655761719 C 245.9637756347656 451.5704650878906 244.6176147460938 452.0435180664063 243.401123046875 452.7929077148438 C 241.8093872070313 453.7737426757813 240.8172912597656 455.1975708007813 240.3359680175781 457.0603637695313 C 240.1834106445313 457.6529846191406 240.1056213378906 458.2444763183594 240.0650024414063 458.8359375 C 242.3130187988281 458.0141906738281 244.0574035644531 457.4397277832031 245.2073364257813 457.4073486328125 C 245.7139587402344 456.2049255371094 246.7725830078125 455.5433959960938 248.1387634277344 455.4244689941406 C 249.4383239746094 455.3101196289063 250.7579345703125 455.4078979492188 252.0675354003906 455.4374084472656 C 252.5517883300781 455.4485778808594 252.7720947265625 455.7237243652344 252.7196655273438 456.2321166992188 C 252.6819458007813 456.6044311523438 252.7125549316406 456.9825744628906 252.7125549316406 457.359619140625 L 252.6024169921875 457.359619140625 C 252.6024169921875 458.3628845214844 252.6042175292969 459.3679504394531 252.6053466796875 460.3711547851563 C 254.2142028808594 461.1611938476563 255.8048400878906 461.8545227050781 257.1639099121094 462.0631103515625 C 257.2651977539063 462.0790100097656 257.3653869628906 462.0942687988281 257.4660949707031 462.1084594726563 C 257.4560852050781 459.8350524902344 257.4755554199219 457.5599365234375 257.4755554199219 455.2865905761719 Z" fill="#bf3627" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ck0uci =
    '<svg viewBox="0.0 0.0 17.5 12.6" ><path transform="translate(-239.9, -466.82)" d="M 257.419677734375 473.7306823730469 C 257.468017578125 476.8683166503906 255.5315856933594 478.7038879394531 252.8075561523438 479.0556335449219 C 251.9144287109375 479.1699523925781 251.0266571044922 479.3985290527344 250.1318054199219 479.427978515625 C 249.2569885253906 479.4580383300781 248.3538818359375 479.3914489746094 247.4996795654297 479.1993713378906 C 246.3043670654297 478.93017578125 245.1231842041016 478.5589904785156 243.9732666015625 478.1313781738281 C 242.5334930419922 477.5963745117188 241.5190124511719 476.5366516113281 240.858642578125 475.1734008789063 C 240.1893920898438 473.7953796386719 239.8453674316406 472.3280334472656 239.9131469726563 470.7828063964844 C 239.9496459960938 469.9374084472656 239.9384613037109 469.0961608886719 239.9991302490234 468.2525329589844 C 242.2471771240234 467.4307556152344 243.9915313720703 466.8563537597656 245.1414642333984 466.823974609375 C 245.0584106445313 467.0189514160156 244.9906311035156 467.2275085449219 244.9382171630859 467.4519653320313 C 244.4910736083984 469.3701477050781 244.4716186523438 471.3047485351563 245.2263031005859 473.181640625 C 245.65283203125 474.241455078125 246.5093841552734 474.8511657714844 247.5650787353516 475.0078735351563 C 248.7120208740234 475.1775207519531 249.8991088867188 475.1940612792969 251.0608367919922 475.1238708496094 C 252.0482025146484 475.0644226074219 252.5271301269531 474.4163513183594 252.5324249267578 473.3989868164063 C 252.5395050048828 472.1954345703125 252.5395050048828 470.9913635253906 252.5395050048828 469.7877502441406 C 254.1483917236328 470.5777282714844 255.7389831542969 471.2710876464844 257.0980224609375 471.4797058105469 C 257.1993408203125 471.4955749511719 257.299560546875 471.5109252929688 257.4002685546875 471.5250244140625 C 257.402587890625 472.2602233886719 257.4085083007813 472.9954223632813 257.419677734375 473.7306823730469 Z" fill="#982a20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6g82eh =
    '<svg viewBox="0.0 0.0 4.9 12.5" ><path transform="translate(-293.54, -466.35)" d="M 298.3988952636719 476.9111938476563 C 298.4000549316406 478.1759948730469 297.7196044921875 478.8670654296875 296.4471435546875 478.8458251953125 C 295.8232727050781 478.8345642089844 295.1935424804688 478.7869262695313 294.5796813964844 478.6838073730469 C 293.7991027832031 478.5524597167969 293.5339965820313 478.0075073242188 293.5369873046875 477.2528686523438 C 293.5481262207031 474.2354736328125 293.5410766601563 471.2150268554688 293.5410766601563 468.1982727050781 C 293.6765441894531 468.1458129882813 293.8149719238281 468.0933837890625 293.9534606933594 468.0398254394531 C 295.6695556640625 467.38232421875 297.1187438964844 466.8162231445313 298.380615234375 466.3519592285156 C 298.3858947753906 469.8718566894531 298.3929748535156 473.3912963867188 298.3988952636719 476.9111938476563 Z" fill="#982a20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8x6jva =
    '<svg viewBox="0.0 0.0 12.5 15.4" ><path transform="translate(-293.54, -443.28)" d="M 305.8263244628906 446.6338806152344 C 305.6920166015625 446.945556640625 305.1223449707031 447.2348022460938 304.7453002929688 447.2448120117188 C 303.9889221191406 447.2660217285156 303.2166442871094 447.1405334472656 302.4731140136719 446.9750061035156 C 301.4074401855469 446.7382202148438 299.3738708496094 447.4209289550781 298.7882690429688 448.2933959960938 C 298.2221069335938 449.1370239257813 298.3746643066406 450.0884704589844 298.4312133789063 451.0126953125 C 298.4371337890625 451.1117248535156 298.7941284179688 451.2554626464844 298.991455078125 451.2613830566406 C 300.0018615722656 451.2866821289063 301.013916015625 451.2484436035156 302.0242004394531 451.2825927734375 C 302.7187805175781 451.3060913085938 303.4469299316406 451.304931640625 304.0890502929688 451.5234985351563 C 304.4813537597656 451.6578369140625 304.876708984375 452.13916015625 305.0216064453125 452.5526733398438 C 305.1830749511719 453.0098571777344 305.1559448242188 453.5883483886719 305.0404968261719 454.0755310058594 C 304.8342590332031 454.9462280273438 304.4843444824219 455.1506958007813 303.5741271972656 455.15185546875 C 302.2103881835938 455.15478515625 300.8472595214844 455.15185546875 299.4827880859375 455.1536254882813 C 298.4353637695313 455.1536254882813 298.3805847167969 455.2083740234375 298.3818054199219 456.2864685058594 C 298.3818054199219 456.4815063476563 298.3818054199219 456.676513671875 298.3835754394531 456.8708190917969 C 297.1216735839844 457.3350830078125 295.6724548339844 457.9012756347656 293.9563598632813 458.5586853027344 C 293.81787109375 458.6122741699219 293.679443359375 458.6647033691406 293.5440063476563 458.7171020507813 L 293.5440063476563 458.4602966308594 L 293.5663757324219 458.4602966308594 C 293.5663757324219 455.5459899902344 293.5622863769531 452.6304321289063 293.5681457519531 449.7143859863281 C 293.5710754394531 447.9741516113281 294.0476989746094 446.3853759765625 295.2218017578125 445.0745239257813 C 296.2986755371094 443.8732604980469 297.7679138183594 443.3920593261719 299.2966613769531 443.3089294433594 C 300.8530578613281 443.2253112792969 302.4336547851563 443.3160400390625 303.9859924316406 443.4880981445313 C 305.8387451171875 443.6942443847656 306.5067443847656 445.0362548828125 305.8263244628906 446.6338806152344 Z" fill="#bf3627" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_y2dcof =
    '<svg viewBox="0.0 0.0 4.9 6.6" ><path transform="translate(-356.97, -476.1)" d="M 361.8318481445313 476.248779296875 L 361.8318481445313 480.9692993164063 C 361.8301086425781 481.927734375 361.5255432128906 482.4568481445313 360.5812377929688 482.630615234375 C 359.8147583007813 482.7701416015625 358.9852905273438 482.7572021484375 358.2147521972656 482.6276245117188 C 357.3652038574219 482.4862670898438 356.9699401855469 481.841796875 356.9699401855469 480.9522094726563 C 356.9699401855469 479.3339233398438 356.9728698730469 477.7162475585938 356.9752807617188 476.097900390625 C 358.5628662109375 476.2164306640625 360.3626098632813 476.3035278320313 361.8318481445313 476.248779296875 Z" fill="#982a20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wll18l =
    '<svg viewBox="0.0 0.0 4.9 11.6" ><path transform="translate(-356.98, -456.63)" d="M 361.8356018066406 465.7120056152344 L 361.8356018066406 468.2481994628906 C 360.3663330078125 468.3029479980469 358.5665893554688 468.2158203125 356.9789733886719 468.0973205566406 C 356.9807434082031 466.4036560058594 356.9836730957031 464.7117309570313 356.9860534667969 463.01806640625 C 356.98779296875 461.6318664550781 356.9860534667969 460.2463073730469 356.9860534667969 458.8600769042969 C 356.9860534667969 457.1793518066406 357.3772277832031 456.7069702148438 359.0384521484375 456.6303100585938 C 359.6959228515625 456.6009216308594 360.3804626464844 456.7505187988281 361.0255432128906 456.9195556640625 C 361.6181945800781 457.0739135742188 361.8255615234375 457.5735473632813 361.8238220214844 458.1732177734375 C 361.8167114257813 460.6863403320313 361.8214721679688 463.1983337402344 361.8214721679688 465.7120056152344 L 361.8356018066406 465.7120056152344 Z" fill="#bf3627" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mskyev =
    '<svg viewBox="0.0 0.0 4.9 9.0" ><path transform="translate(-277.45, -472.34)" d="M 282.3232116699219 479.5569458007813 C 282.3373413085938 480.4047241210938 281.9703674316406 481.1022338867188 281.0048217773438 481.2518310546875 C 280.1965637207031 481.3755493164063 279.3381958007813 481.2448120117188 278.5099182128906 481.1487426757813 C 277.6899108886719 481.052734375 277.4642639160156 480.3582153320313 277.4601440429688 479.701904296875 C 277.4500732421875 477.6983642578125 277.4459838867188 475.6953735351563 277.4459838867188 473.6912231445313 C 278.7797241210938 473.4485473632813 280.324951171875 473.0167236328125 282.3078918457031 472.3439331054688 C 282.3078918457031 474.7498779296875 282.2796630859375 477.1534423828125 282.3232116699219 479.5569458007813 Z" fill="#982a20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wg9ibz =
    '<svg viewBox="0.0 0.0 4.9 10.5" ><path transform="translate(-277.45, -456.87)" d="M 282.3078918457031 465.9406127929688 L 282.3078918457031 465.9846801757813 C 280.324951171875 466.6575012207031 278.7797241210938 467.0892639160156 277.4459838867188 467.3320922851563 C 277.4459838867188 464.4041748046875 277.4542236328125 461.4757385253906 277.4642639160156 458.5472106933594 C 277.4684143066406 457.4491577148438 278.0628051757813 456.9313659667969 279.4989929199219 456.8705749511719 C 280.159423828125 456.8435668945313 280.8439636230469 456.9837036132813 281.489013671875 457.1540222167969 C 282.1141052246094 457.3195190429688 282.299072265625 457.8497619628906 282.2979125976563 458.4736022949219 C 282.287841796875 460.9631958007813 282.2937316894531 463.4527893066406 282.2937316894531 465.9406127929688 L 282.3078918457031 465.9406127929688 Z" fill="#bf3627" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_lwlew8 =
    '<svg viewBox="0.0 0.0 18.1 17.7" ><path transform="translate(-205.49, -447.2)" d="M 221.3178405761719 450.9528198242188 C 222.0936889648438 450.9528198242188 222.6698150634766 450.7807922363281 223.0462646484375 450.4367980957031 C 223.4232788085938 450.0932312011719 223.6123962402344 449.637939453125 223.6123962402344 449.0689086914063 C 223.6123962402344 448.5115356445313 223.4232788085938 448.0614929199219 223.0462646484375 447.7167663574219 C 222.6698150634766 447.3739929199219 222.0936889648438 447.2019348144531 221.3178405761719 447.2019348144531 L 208.4740295410156 447.2019348144531 C 207.7853698730469 447.2019348144531 207.2203979492188 447.3020935058594 206.7773742675781 447.5041809082031 C 206.3355712890625 447.7073669433594 206.0109710693359 448.029052734375 205.8036193847656 448.4709167480469 C 205.5962524414063 448.9139099121094 205.4919738769531 449.484130859375 205.4919738769531 450.1840209960938 L 205.4919738769531 464.2036743164063 C 206.9653625488281 464.7156372070313 208.5977630615234 465.0036926269531 210.3580322265625 464.896484375 L 210.3580322265625 460.5218200683594 L 220.4500732421875 460.5218200683594 C 221.2035369873047 460.5218200683594 221.7608337402344 460.3491821289063 222.1207885742188 460.0050659179688 C 222.48193359375 459.660400390625 222.6609954833984 459.2162780761719 222.6609954833984 458.6695556640625 C 222.6609954833984 458.1234130859375 222.4789276123047 457.6845703125 222.1125183105469 457.3505249023438 C 221.7467041015625 457.0170593261719 221.1923370361328 456.8510131835938 220.4500732421875 456.8510131835938 L 210.3580322265625 456.8510131835938 L 210.3580322265625 450.9528198242188 L 221.3178405761719 450.9528198242188 Z" fill="#bf3627" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_l7dssf =
    '<svg viewBox="0.0 0.0 18.5 7.0" ><path transform="translate(-205.49, -476.06)" d="M 224.0047607421875 481.16064453125 C 224.0047607421875 481.7291870117188 223.8115386962891 482.1910400390625 223.4232788085938 482.5450439453125 C 223.0350799560547 482.90087890625 222.4595031738281 483.0769653320313 221.6948394775391 483.0769653320313 L 208.4740295410156 483.0769653320313 C 207.4142303466797 483.0769653320313 206.6519317626953 482.842529296875 206.1888885498047 482.373046875 C 205.7246551513672 481.9041137695313 205.4919738769531 481.1453247070313 205.4919738769531 480.0968017578125 L 205.4919738769531 476.0618896484375 C 206.9653625488281 476.5738525390625 208.5977630615234 476.8619384765625 210.3580322265625 476.7546997070313 L 210.3580322265625 479.2118530273438 L 221.6948394775391 479.2118530273438 C 222.4595031738281 479.2118530273438 223.0350799560547 479.3892822265625 223.4232788085938 479.743896484375 C 223.8115386962891 480.097900390625 224.0047607421875 480.5709228515625 224.0047607421875 481.16064453125 Z" fill="#982a20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8hsnl4 =
    '<svg viewBox="0.0 0.0 20.1 15.6" ><path transform="translate(-374.37, -446.5)" d="M 393.8643188476563 447.2018432617188 C 393.4608764648438 446.7376403808594 392.9088745117188 446.5049438476563 392.2100830078125 446.5049438476563 C 391.5326538085938 446.5049438476563 390.9948120117188 446.7376403808594 390.5953979492188 447.2018432617188 C 390.1978149414063 447.6660461425781 389.9986572265625 448.3618469238281 389.9986572265625 449.2908325195313 L 389.9986572265625 462.0951538085938 C 391.5821533203125 462.1074829101563 393.1162109375 461.9625854492188 394.47119140625 461.7139587402344 L 394.47119140625 449.2908325195313 C 394.47119140625 448.3618469238281 394.26904296875 447.6660461425781 393.8643188476563 447.2018432617188 Z M 379.8812255859375 448.2251281738281 C 379.6356201171875 447.843994140625 379.3958129882813 447.5323486328125 379.16015625 447.2925720214844 C 378.9257202148438 447.05224609375 378.653564453125 446.8601684570313 378.3418579101563 446.7182006835938 C 378.0296630859375 446.5768432617188 377.6555786132813 446.5049438476563 377.2197265625 446.5049438476563 C 376.662353515625 446.5049438476563 376.1427612304688 446.6616516113281 375.6632690429688 446.9721069335938 C 375.1819458007813 447.2837219238281 374.8373413085938 447.684326171875 374.6317138671875 448.1774291992188 C 374.456787109375 448.6245422363281 374.3689575195313 449.2413330078125 374.3689575195313 450.0272521972656 L 374.3689575195313 456.45556640625 C 375.2708740234375 456.559814453125 376.7100830078125 457.015869140625 378.9234008789063 458.3678894042969 L 378.9234008789063 454.4838256835938 L 383.0624389648438 460.8320617675781 L 383.0636596679688 460.8320617675781 C 384.8998413085938 461.5897521972656 386.9688110351563 461.9649047851563 389.0006713867188 462.0668029785156 L 380.6435546875 449.421630859375 C 380.3807983398438 449.0069274902344 380.126953125 448.6074829101563 379.8812255859375 448.2251281738281 Z" fill="#bf3627" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bgk15k =
    '<svg viewBox="0.0 0.0 11.4 10.5" ><path transform="translate(-389.13, -470.83)" d="M 400.5355224609375 471.7068481445313 L 400.5355224609375 478.1735229492188 C 400.5355224609375 480.2819213867188 399.661865234375 481.3358764648438 397.9133911132813 481.3358764648438 C 397.4773559570313 481.3358764648438 397.0833129882813 481.272216796875 396.7344970703125 481.1467895507813 C 396.3845825195313 481.0213012695313 396.0576782226563 480.8221435546875 395.7512817382813 480.5481567382813 C 395.4450073242188 480.2760620117188 395.1610107421875 479.957275390625 394.8988647460938 479.5902709960938 C 394.6378784179688 479.2244873046875 394.3751831054688 478.8509521484375 394.1124267578125 478.4680786132813 L 389.1279907226563 470.8250122070313 C 390.9641723632813 471.58251953125 393.0331420898438 471.9578247070313 395.0650024414063 472.0596923828125 L 396.0629272460938 473.569580078125 L 396.0629272460938 472.0880126953125 C 397.6464233398438 472.1004028320313 399.1805419921875 471.9555053710938 400.5355224609375 471.7068481445313 Z" fill="#982a20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_blz6vf =
    '<svg viewBox="0.0 0.0 4.6 14.9" ><path transform="translate(-374.37, -463.4)" d="M 378.9234008789063 465.3082275390625 L 378.9234008789063 475.49755859375 C 378.9234008789063 476.4147338867188 378.7100830078125 477.1093139648438 378.2836303710938 477.5776977539063 C 377.857666015625 478.0477294921875 377.3115844726563 478.2833862304688 376.645263671875 478.2833862304688 C 375.9578247070313 478.2833862304688 375.4063720703125 478.0447387695313 374.9910278320313 477.570556640625 C 374.5763549804688 477.0950927734375 374.3689575195313 476.4053344726563 374.3689575195313 475.49755859375 L 374.3689575195313 463.39599609375 C 375.2708740234375 463.500244140625 376.7100830078125 463.9561767578125 378.9234008789063 465.3082275390625 Z" fill="#982a20" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qxyq27 =
    '<svg viewBox="0.0 0.0 57.3 53.6" ><path transform="translate(-252.41, -331.85)" d="M 262.2034912109375 332.6392211914063 L 305.3174438476563 340.6127624511719 C 305.3174438476563 340.6127624511719 309.6927490234375 341.0357666015625 309.6927490234375 345.4111022949219 L 309.6927490234375 381.5394287109375 C 309.6927490234375 381.5394287109375 310.610107421875 385.5612487792969 302.5657958984375 385.4911804199219 C 294.5214538574219 385.4204711914063 257.4052124023438 384.3618774414063 257.4052124023438 384.3618774414063 C 257.4052124023438 384.3618774414063 252.4654846191406 384.2911987304688 252.4654846191406 374.7652587890625 L 252.4654846191406 336.87255859375 C 252.4654846191406 336.87255859375 251.1252746582031 329.4638671875 262.2034912109375 332.6392211914063" fill="#0098cd" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_n9x81g =
    '<svg viewBox="0.0 0.0 25.7 34.6" ><path transform="translate(-306.07, -364.91)" d="M 324.5605773925781 399.51318359375 C 321.4577026367188 399.486083984375 314.0272827148438 399.3111572265625 306.0690002441406 399.1078796386719 L 306.0690002441406 372.6268005371094 C 306.0690002441406 372.6268005371094 306.0690002441406 369.3106994628906 309.4557800292969 368.32275390625 C 311.4475708007813 367.7424621582031 322.7278442382813 366.1365661621094 331.6875610351563 364.9129943847656 L 331.6875610351563 395.5614624023438 C 331.6875610351563 395.5614624023438 332.6048583984375 399.5838928222656 324.5605773925781 399.51318359375 Z" fill="#177eb0" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_c7rtr4 =
    '<svg viewBox="0.0 0.0 43.5 41.6" ><path transform="translate(-306.07, -361.61)" d="M 349.535888671875 364.9912719726563 L 349.535888671875 399.5673828125 C 349.535888671875 399.5673828125 348.9007568359375 402.7426147460938 345.5140686035156 402.9547119140625 C 342.1266479492188 403.1661987304688 309.1034851074219 403.2369384765625 309.1034851074219 403.2369384765625 C 309.1034851074219 403.2369384765625 306.4925231933594 402.3897094726563 306.0690002441406 399.3558959960938 L 306.0690002441406 397.7523193359375 C 314.0272827148438 397.95556640625 321.4577026367188 398.1304931640625 324.5605773925781 398.1575927734375 C 332.6048583984375 398.2283325195313 331.6875610351563 394.205810546875 331.6875610351563 394.205810546875 L 331.6875610351563 363.5574340820313 C 337.970458984375 362.69970703125 343.1145935058594 362.0275268554688 343.1145935058594 362.0275268554688 C 343.1145935058594 362.0275268554688 348.61865234375 359.9815063476563 349.535888671875 364.9912719726563 Z" fill="#01699a" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5z0py2 =
    '<svg viewBox="0.0 0.0 45.4 43.6" ><path transform="translate(-304.39, -359.34)" d="M 308.2588806152344 402.9389343261719 L 308.1092834472656 402.8905639648438 C 307.9784545898438 402.84814453125 304.9044494628906 401.811279296875 304.4014282226563 398.20654296875 L 304.3919372558594 398.1382141113281 L 304.3919372558594 369.98583984375 C 304.3919372558594 368.5820007324219 305.24853515625 365.6782836914063 308.4898071289063 364.7327575683594 C 311.8460083007813 363.7542114257813 339.9612426757813 360.067626953125 342.197509765625 359.7754516601563 C 342.7890319824219 359.5780639648438 345.4423217773438 358.80224609375 347.5224609375 359.9851379394531 C 348.7424926757813 360.6785278320313 349.5148315429688 361.8702697753906 349.8182373046875 363.5274963378906 L 349.8347473144531 363.6158142089844 L 349.8347473144531 398.3791198730469 L 349.8152770996094 398.4751892089844 C 349.5442810058594 399.8313293457031 348.1651611328125 402.4493713378906 344.8861999511719 402.6543273925781 C 341.5082397460938 402.8658142089844 309.7658386230469 402.9359436035156 308.4161682128906 402.9389343261719 L 308.2588806152344 402.9389343261719 Z M 306.3672180175781 397.9980163574219 C 306.6753540039063 399.9963073730469 308.1551513671875 400.7732849121094 308.5952758789063 400.9624328613281 C 311.2521667480469 400.9565124511719 341.5736389160156 400.8817443847656 344.7630615234375 400.6825866699219 C 347.1200561523438 400.5352783203125 347.7474975585938 398.6018981933594 347.8588562011719 398.1700134277344 L 347.8588562011719 363.7990112304688 C 347.6561584472656 362.7781066894531 347.2279357910156 362.0929870605469 346.5516357421875 361.7059020996094 C 345.0535278320313 360.8487243652344 342.7896118164063 361.6605529785156 342.7671203613281 361.6688232421875 L 342.6640319824219 361.70654296875 L 342.5533752441406 361.7212219238281 C 332.1090087890625 363.0849914550781 311.6644897460938 365.8650817871094 309.04296875 366.6296997070313 C 306.4485473632813 367.3860778808594 306.36962890625 369.8585815429688 306.3672180175781 369.9905700683594 L 306.3672180175781 397.9980163574219 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bl35c4 =
    '<svg viewBox="0.0 0.0 12.9 26.3" ><path transform="translate(-252.41, -377.38)" d="M 265.2039489746094 403.7254638671875 C 260.5211486816406 403.5958862304688 257.3546447753906 403.5051574707031 257.3546447753906 403.5051574707031 C 257.3546447753906 403.5051574707031 252.4149780273438 403.4349975585938 252.4149780273438 393.9085693359375 L 252.4149780273438 377.3769836425781 C 256.1746520996094 377.69921875 261.777099609375 378.3160095214844 261.777099609375 378.3160095214844 C 261.777099609375 378.3160095214844 264.7874755859375 379.0677185058594 265.1645202636719 383.3016052246094 C 265.4608154296875 386.6466369628906 265.2887573242188 398.6773681640625 265.2039489746094 403.7254638671875 Z" fill="#20acde" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_478wxb =
    '<svg viewBox="0.0 0.0 18.9 33.2" ><path transform="translate(-242.12, -377.05)" d="M 260.9754943847656 403.5927429199219 C 260.9525146484375 404.9347534179688 260.93603515625 405.7842407226563 260.93603515625 405.8437805175781 C 260.93603515625 406.1259155273438 259.9945983886719 409.6046447753906 256.7021179199219 410.075927734375 C 253.4083862304688 410.5477905273438 245.8819274902344 410.075927734375 245.5997009277344 410.075927734375 C 245.3175354003906 410.075927734375 242.1239929199219 409.41845703125 242.1239929199219 404.527099609375 C 242.1239929199219 399.6345520019531 242.2648010253906 380.1615295410156 242.2648010253906 380.1615295410156 C 242.2648010253906 380.1615295410156 243.1537322998047 377.0539245605469 245.2227020263672 377.0539245605469 C 245.7634887695313 377.0539245605469 246.8598327636719 377.1299438476563 248.1864929199219 377.2442321777344 L 248.1864929199219 393.7758483886719 C 248.1864929199219 403.3023376464844 253.1261901855469 403.3724365234375 253.1261901855469 403.3724365234375 C 253.1261901855469 403.3724365234375 256.2926635742188 403.4631042480469 260.9754943847656 403.5927429199219 Z" fill="#4fc7f3" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_57wr5k =
    '<svg viewBox="0.0 0.0 21.0 35.2" ><path transform="translate(-240.45, -374.78)" d="M 251.7578887939453 409.9859313964844 C 249.9840545654297 409.9859313964844 247.8314514160156 409.9228820800781 245.3112335205078 409.7968139648438 C 245.0921325683594 409.78564453125 244.9483947753906 409.7779235839844 244.8994598388672 409.7767944335938 C 244.0252532958984 409.7773742675781 240.4469757080078 408.6138610839844 240.4469757080078 403.2394409179688 C 240.4469757080078 398.3993225097656 240.5866088867188 379.0617980957031 240.5877990722656 378.8667907714844 L 240.5889739990234 378.7324829101563 L 240.6260833740234 378.6022644042969 C 241.0319519042969 377.1825256347656 242.3121490478516 374.7789916992188 244.5342407226563 374.7789916992188 C 246.6343994140625 374.7789916992188 256.5467834472656 375.8675842285156 256.9673767089844 375.91357421875 L 257.033935546875 375.9212341308594 L 257.0987854003906 375.9371948242188 C 257.2495727539063 375.9754028320313 260.7965698242188 376.9168701171875 261.230224609375 381.794677734375 C 261.5306396484375 385.1708679199219 261.3674621582031 397.1733703613281 261.2437133789063 404.0276489257813 C 261.2378845214844 404.3368835449219 261.2343444824219 404.5224914550781 261.2343444824219 404.5595703125 C 261.2343444824219 405.3478698730469 259.9105834960938 409.2289123535156 256.1526794433594 409.7673034667969 C 255.1352691650391 409.912841796875 253.6654357910156 409.9859313964844 251.7578887939453 409.9859313964844 Z M 244.9636688232422 407.8020935058594 C 245.0314331054688 407.804443359375 245.1486663818359 407.810302734375 245.4102172851563 407.8233032226563 C 250.5130920410156 408.0789794921875 254.0336456298828 408.0748291015625 255.872802734375 407.8114929199219 C 258.4401550292969 407.4439086914063 259.1918334960938 404.754638671875 259.2596130371094 404.4818420410156 C 259.2608032226563 404.3917236328125 259.2637329101563 404.2250061035156 259.2678833007813 403.99169921875 C 259.4811096191406 392.224853515625 259.478759765625 384.4044494628906 259.2625427246094 381.9695739746094 C 258.9768371582031 378.7566528320313 257.0003662109375 377.9772338867188 256.6675109863281 377.8682250976563 C 255.6837310791016 377.760986328125 246.4299621582031 376.7548522949219 244.5342407226563 376.7548522949219 C 243.5074310302734 376.7548522949219 242.7733612060547 378.3978271484375 242.5624542236328 379.0276489257813 C 242.5495452880859 380.8314819335938 242.4222869873047 398.6296691894531 242.4222869873047 403.2394409179688 C 242.4222869873047 407.24951171875 244.7575225830078 407.7650146484375 244.9636688232422 407.8020935058594 Z M 244.9230346679688 407.8015441894531 L 244.9106750488281 407.8015441894531 L 244.9465942382813 407.8020935058594 L 244.9230346679688 407.8015441894531 Z M 259.2590026855469 404.5159912109375 C 259.2583923339844 404.5325317382813 259.2583923339844 404.5460815429688 259.2583923339844 404.5567016601563 L 259.2590026855469 404.5159912109375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_74yre5 =
    '<svg viewBox="0.0 0.0 5.2 5.2" ><path transform="translate(-277.17, -443.34)" d="M 279.7508239746094 448.5442504882813 C 277.9981994628906 448.5448608398438 277.2052612304688 447.7342834472656 277.1734619140625 445.9975280761719 C 277.1404724121094 444.1577758789063 278.1808166503906 443.3572082519531 279.8586120605469 443.3418579101563 C 281.3708801269531 443.3276977539063 282.4542236328125 444.2419738769531 282.4012145996094 445.9356689453125 C 282.3499450683594 447.5704345703125 281.7885437011719 448.5154113769531 279.7508239746094 448.5442504882813 Z" fill="#01699a" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_myikxa =
    '<svg viewBox="0.0 0.0 5.2 5.2" ><path transform="translate(-356.7, -443.1)" d="M 356.7065734863281 445.7960205078125 C 356.6334838867188 443.9079284667969 357.7073974609375 443.1333312988281 359.3463134765625 443.1015014648438 C 360.9334106445313 443.0707702636719 361.9931640625 444.0587768554688 361.9248657226563 445.7265014648438 C 361.8559875488281 447.408447265625 361.2356567382813 448.2933044433594 359.2455749511719 448.3021240234375 C 357.5371704101563 448.309814453125 356.7077026367188 447.482666015625 356.7065734863281 445.7960205078125 Z" fill="#01699a" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

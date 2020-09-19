import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import './register.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class select extends StatelessWidget {
  select({
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
            offset: Offset(-1.0, 0.0),
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
            offset: Offset(105.0, 134.0),
            child: Container(
              width: 164.0,
              height: 164.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(137.0, 766.0),
            child: Container(
              width: 99.0,
              height: 35.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 326.0),
            child: Container(
              width: 292.0,
              height: 77.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0x80ffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x15000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 356.0),
            child: SizedBox(
              width: 168.0,
              child: Text(
                'Organization Code',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 19,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(261.0, 342.0),
            child: SvgPicture.string(
              _svg_eg1w26,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(137.0, 495.0),
            child: SizedBox(
              width: 100.0,
              height: 100.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 100.0, 100.0),
                    size: Size(100.0, 100.0),
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
                    bounds: Rect.fromLTWH(24.3, 24.2, 50.7, 50.7),
                    size: Size(100.0, 100.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Icon metro-qrcode' (shape)
                        SvgPicture.string(
                      _svg_q7t6cv,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(111.4, 603.0),
            child: SizedBox(
              width: 151.0,
              child: Text(
                'Scan QR Code',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 22,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(66.5, 436.0),
            child: SizedBox(
              width: 240.0,
              height: 27.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(109.5, 0.0, 23.0, 27.0),
                    size: Size(240.0, 27.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Text(
                      'Or',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 22,
                        color: const Color(0xff9b2713),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 15.5, 100.0, 1.0),
                    size: Size(240.0, 27.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_nxzakb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(140.0, 15.5, 100.0, 1.0),
                    size: Size(240.0, 27.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_l7w1lj,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(135.4, 744.0),
            child: SizedBox(
              width: 103.0,
              child: Text(
                'Powered By',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 18,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-1.0, 0.0),
            child:
                // Adobe XD layer: 'Three Actions' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => RegisterScreen(),
                ),
              ],
              child: SizedBox(
                width: 377.0,
                height: 812.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(1.0, 0.0, 376.0, 812.0),
                      size: Size(377.0, 812.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Dimming Overlay' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 812.0),
                            size: Size(376.0, 812.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child:
                                // Adobe XD layer: 'Overlay' (shape)
                                SvgPicture.string(
                              _svg_wioy5f,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 522.0, 376.0, 290.0),
                      size: Size(377.0, 812.0),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Sheet with Cancel' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 8.0, 376.0, 282.0),
                            size: Size(376.0, 290.0),
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
                            bounds: Rect.fromLTWH(8.0, 0.0, 360.0, 221.0),
                            size: Size(376.0, 290.0),
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
                            bounds: Rect.fromLTWH(8.0, 229.0, 360.0, 56.0),
                            size: Size(376.0, 290.0),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Cancel Button' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 56.0),
                                  size: Size(360.0, 56.0),
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
                                  bounds:
                                      Rect.fromLTWH(152.0, 13.0, 58.0, 27.0),
                                  size: Size(360.0, 56.0),
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child:
                                      // Adobe XD layer: 'Label' (text)
                                      Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 20,
                                      color: const Color(0xff494848),
                                      letterSpacing: -0.48,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
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

const String _svg_q7t6cv =
    '<svg viewBox="162.3 530.2 50.7 50.7" ><path transform="translate(159.69, 528.26)" d="M 18.42699241638184 5.099291324615479 L 5.741959571838379 5.099291324615479 L 5.741959571838379 17.78432464599609 L 18.42699241638184 17.78432464599609 L 18.42699241638184 5.099291324615479 Z M 21.59825134277344 1.928033232688904 L 21.59825134277344 20.9555835723877 L 2.570701599121094 20.9555835723877 L 2.570701599121094 1.928033232688904 L 21.59825134277344 1.928033232688904 Z M 8.91321849822998 8.270549774169922 L 15.25573539733887 8.270549774169922 L 15.25573539733887 14.61306667327881 L 8.913219451904297 14.61306667327881 L 8.91321849822998 8.270549774169922 Z M 50.13957977294922 5.099291801452637 L 37.45454788208008 5.099291801452637 L 37.45454788208008 17.78432464599609 L 50.13957977294922 17.78432464599609 L 50.13957977294922 5.099291324615479 Z M 53.31083679199219 1.928033709526062 L 53.31083679199219 20.9555835723877 L 34.28328704833984 20.9555835723877 L 34.28328704833984 1.928033232688904 L 53.31083679199219 1.928033232688904 Z M 40.62580490112305 8.270549774169922 L 46.96832275390625 8.270549774169922 L 46.96832275390625 14.61306667327881 L 40.62580490112305 14.61306667327881 L 40.62580490112305 8.270549774169922 Z M 18.42699813842773 36.81187438964844 L 5.741964340209961 36.81187438964844 L 5.741964340209961 49.49690628051758 L 18.42699813842773 49.49690628051758 L 18.42699813842773 36.81187438964844 Z M 21.59825706481934 33.64061737060547 L 21.59825706481934 52.66816711425781 L 2.570705890655518 52.66816711425781 L 2.570705890655518 33.64061737060547 L 21.59825706481934 33.64061737060547 Z M 8.913223266601563 39.98313522338867 L 15.25573921203613 39.98313522338867 L 15.25573921203613 46.32565307617188 L 8.913224220275879 46.32565307617188 L 8.913223266601563 39.98313522338867 Z M 24.7695140838623 1.928033947944641 L 27.94077301025391 1.928033947944641 L 27.94077301025391 5.099291801452637 L 24.7695140838623 5.099291801452637 L 24.7695140838623 1.928033947944641 Z M 27.94077301025391 5.099291801452637 L 31.11203002929688 5.099291801452637 L 31.11203002929688 8.270549774169922 L 27.94077301025391 8.270549774169922 L 27.94077301025391 5.099291801452637 Z M 24.7695140838623 8.270549774169922 L 27.94077301025391 8.270549774169922 L 27.94077301025391 11.44180774688721 L 24.7695140838623 11.44180774688721 L 24.7695140838623 8.270549774169922 Z M 27.94077301025391 11.44180774688721 L 31.11203002929688 11.44180774688721 L 31.11203002929688 14.61306667327881 L 27.94077301025391 14.61306667327881 L 27.94077301025391 11.44180774688721 Z M 24.7695140838623 14.61306667327881 L 27.94077301025391 14.61306667327881 L 27.94077301025391 17.78432464599609 L 24.7695140838623 17.78432464599609 L 24.7695140838623 14.61306667327881 Z M 27.94077301025391 17.78432464599609 L 31.11203002929688 17.78432464599609 L 31.11203002929688 20.9555835723877 L 27.94077301025391 20.9555835723877 L 27.94077301025391 17.78432464599609 Z M 24.7695140838623 20.9555835723877 L 27.94077301025391 20.9555835723877 L 27.94077301025391 24.1268424987793 L 24.7695140838623 24.1268424987793 L 24.7695140838623 20.9555835723877 Z M 24.7695140838623 27.2981014251709 L 27.94077301025391 27.2981014251709 L 27.94077301025391 30.4693603515625 L 24.7695140838623 30.4693603515625 L 24.7695140838623 27.2981014251709 Z M 27.94077301025391 30.4693603515625 L 31.11203002929688 30.4693603515625 L 31.11203002929688 33.64062118530273 L 27.94077301025391 33.64062118530273 L 27.94077301025391 30.4693603515625 Z M 24.7695140838623 33.64062118530273 L 27.94077301025391 33.64062118530273 L 27.94077301025391 36.8118782043457 L 24.7695140838623 36.8118782043457 L 24.7695140838623 33.64062118530273 Z M 27.94077301025391 36.8118782043457 L 31.11203002929688 36.8118782043457 L 31.11203002929688 39.98313903808594 L 27.94077301025391 39.98313903808594 L 27.94077301025391 36.8118782043457 Z M 24.7695140838623 39.98313903808594 L 27.94077301025391 39.98313903808594 L 27.94077301025391 43.15439605712891 L 24.7695140838623 43.15439605712891 L 24.7695140838623 39.98313903808594 Z M 27.94077301025391 43.15439605712891 L 31.11203002929688 43.15439605712891 L 31.11203002929688 46.32565689086914 L 27.94077301025391 46.32565689086914 L 27.94077301025391 43.15439605712891 Z M 24.7695140838623 46.32565689086914 L 27.94077301025391 46.32565689086914 L 27.94077301025391 49.49691390991211 L 24.7695140838623 49.49691390991211 L 24.7695140838623 46.32565689086914 Z M 27.94077301025391 49.49691390991211 L 31.11203002929688 49.49691390991211 L 31.11203002929688 52.66817474365234 L 27.94077301025391 52.66817474365234 L 27.94077301025391 49.49691390991211 Z M 50.13958358764648 27.29810905456543 L 53.31083679199219 27.29810905456543 L 53.31083679199219 30.46936798095703 L 50.13957977294922 30.46936798095703 L 50.13958358764648 27.29810905456543 Z M 5.741966724395752 27.29810905456543 L 8.913224220275879 27.29810905456543 L 8.913224220275879 30.46936798095703 L 5.741966724395752 30.46936798095703 L 5.741966724395752 27.29810905456543 Z M 8.913224220275879 24.12685012817383 L 12.08448314666748 24.12685012817383 L 12.08448314666748 27.29810905456543 L 8.913224220275879 27.29810905456543 L 8.913224220275879 24.12685012817383 Z M 2.57070779800415 24.12685012817383 L 5.741966724395752 24.12685012817383 L 5.741966724395752 27.29810905456543 L 2.570708274841309 27.29810905456543 L 2.57070779800415 24.12685012817383 Z M 15.25574111938477 24.12685012817383 L 18.42700004577637 24.12685012817383 L 18.42700004577637 27.29810905456543 L 15.25574111938477 27.29810905456543 L 15.25574111938477 24.12685012817383 Z M 18.42700004577637 27.29810905456543 L 21.59825897216797 27.29810905456543 L 21.59825897216797 30.46936798095703 L 18.42700004577637 30.46936798095703 L 18.42700004577637 27.29810905456543 Z M 21.59825897216797 24.12685012817383 L 24.76951599121094 24.12685012817383 L 24.76951599121094 27.29810905456543 L 21.59825706481934 27.29810905456543 L 21.59825897216797 24.12685012817383 Z M 31.11203384399414 27.29810905456543 L 34.28329467773438 27.29810905456543 L 34.28329467773438 30.46936798095703 L 31.11203384399414 30.46936798095703 L 31.11203384399414 27.29810905456543 Z M 34.28329467773438 24.12685012817383 L 37.45455169677734 24.12685012817383 L 37.45455169677734 27.29810905456543 L 34.28329467773438 27.29810905456543 L 34.28329467773438 24.12685012817383 Z M 37.45455169677734 27.29810905456543 L 40.62581253051758 27.29810905456543 L 40.62581253051758 30.46936798095703 L 37.45455169677734 30.46936798095703 L 37.45455169677734 27.29810905456543 Z M 40.62581253051758 24.12685012817383 L 43.79706954956055 24.12685012817383 L 43.79706954956055 27.29810905456543 L 40.62581253051758 27.29810905456543 L 40.62581253051758 24.12685012817383 Z M 43.79706954956055 27.29810905456543 L 46.96833038330078 27.29810905456543 L 46.96833038330078 30.46936798095703 L 43.79706954956055 30.46936798095703 L 43.79706954956055 27.29810905456543 Z M 46.96833038330078 24.12685012817383 L 50.13958740234375 24.12685012817383 L 50.13958740234375 27.29810905456543 L 46.96833038330078 27.29810905456543 L 46.96833038330078 24.12685012817383 Z M 50.13958740234375 33.640625 L 53.31084442138672 33.640625 L 53.31084442138672 36.81188583374023 L 50.13958358764648 36.81188583374023 L 50.13958740234375 33.640625 Z M 31.11203765869141 33.640625 L 34.28329849243164 33.640625 L 34.28329849243164 36.81188583374023 L 31.11203765869141 36.81188583374023 L 31.11203765869141 33.640625 Z M 34.28329849243164 30.46936798095703 L 37.45455551147461 30.46936798095703 L 37.45455551147461 33.640625 L 34.28329849243164 33.640625 L 34.28329849243164 30.46936798095703 Z M 37.45455551147461 33.640625 L 40.62581634521484 33.640625 L 40.62581634521484 36.81188583374023 L 37.45455551147461 36.81188583374023 L 37.45455551147461 33.640625 Z M 43.79707336425781 33.640625 L 46.96833038330078 33.640625 L 46.96833038330078 36.81188583374023 L 43.79707336425781 36.81188583374023 L 43.79707336425781 33.640625 Z M 46.96833038330078 30.46936798095703 L 50.13959121704102 30.46936798095703 L 50.13959121704102 33.640625 L 46.96833038330078 33.640625 L 46.96833038330078 30.46936798095703 Z M 50.13959121704102 39.9831428527832 L 53.31084823608398 39.9831428527832 L 53.31084823608398 43.15440368652344 L 50.13959121704102 43.15440368652344 L 50.13959121704102 39.9831428527832 Z M 31.11204147338867 39.9831428527832 L 34.28329849243164 39.9831428527832 L 34.28329849243164 43.15440368652344 L 31.11204147338867 43.15440368652344 L 31.11204147338867 39.9831428527832 Z M 34.28329849243164 36.81188583374023 L 37.45455932617188 36.81188583374023 L 37.45455932617188 39.9831428527832 L 34.28329849243164 39.9831428527832 L 34.28329849243164 36.81188583374023 Z M 40.62581634521484 36.81188583374023 L 43.79707717895508 36.81188583374023 L 43.79707717895508 39.9831428527832 L 40.62581634521484 39.9831428527832 L 40.62581634521484 36.81188583374023 Z M 43.79707717895508 39.9831428527832 L 46.96833419799805 39.9831428527832 L 46.96833419799805 43.15440368652344 L 43.79707717895508 43.15440368652344 L 43.79707717895508 39.9831428527832 Z M 46.96833419799805 36.81188583374023 L 50.13959503173828 36.81188583374023 L 50.13959503173828 39.9831428527832 L 46.96833419799805 39.9831428527832 L 46.96833419799805 36.81188583374023 Z M 50.13959503173828 46.32566070556641 L 53.31084823608398 46.32566070556641 L 53.31084823608398 49.49692153930664 L 50.13959121704102 49.49692153930664 L 50.13959503173828 46.32566070556641 Z M 34.28330230712891 43.15440368652344 L 37.45456314086914 43.15440368652344 L 37.45456314086914 46.32566070556641 L 34.28330230712891 46.32566070556641 L 34.28330230712891 43.15440368652344 Z M 37.45456314086914 46.32566070556641 L 40.62582015991211 46.32566070556641 L 40.62582015991211 49.49692153930664 L 37.45456314086914 49.49692153930664 L 37.45456314086914 46.32566070556641 Z M 40.62582015991211 43.15440368652344 L 43.79708099365234 43.15440368652344 L 43.79708099365234 46.32566070556641 L 40.62582015991211 46.32566070556641 L 40.62582015991211 43.15440368652344 Z M 43.79708099365234 46.32566070556641 L 46.96833801269531 46.32566070556641 L 46.96833801269531 49.49692153930664 L 43.79708099365234 49.49692153930664 L 43.79708099365234 46.32566070556641 Z M 34.28330230712891 49.49692153930664 L 37.45456314086914 49.49692153930664 L 37.45456314086914 52.66817855834961 L 34.28330230712891 52.66817855834961 L 34.28330230712891 49.49692153930664 Z M 40.62582015991211 49.49692153930664 L 43.79708099365234 49.49692153930664 L 43.79708099365234 52.66817855834961 L 40.62582015991211 52.66817855834961 L 40.62582015991211 49.49692153930664 Z M 46.96833801269531 49.49692153930664 L 50.13959884643555 49.49692153930664 L 50.13959884643555 52.66817855834961 L 46.96833801269531 52.66817855834961 L 46.96833801269531 49.49692153930664 Z" fill="none" stroke="#c2321b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eg1w26 =
    '<svg viewBox="261.0 342.0 46.0 46.0" ><path transform="translate(261.0, 342.0)" d="M 23 0 C 35.70254898071289 0 46 10.29745101928711 46 23 C 46 35.70254898071289 35.70254898071289 46 23 46 C 10.29745101928711 46 0 35.70254898071289 0 23 C 0 10.29745101928711 10.29745101928711 0 23 0 Z" fill="#1482b4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-1163.29, -404.24)" d="M 1442.5 759.2618408203125 L 1452.388671875 769.150390625 L 1442.5 779.0389404296875" fill="none" stroke="#ffffff" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_nxzakb =
    '<svg viewBox="67.5 468.5 100.0 1.0" ><path transform="translate(67.5, 468.5)" d="M 0 0 L 100 0" fill="none" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l7w1lj =
    '<svg viewBox="207.5 468.5 100.0 1.0" ><path transform="translate(207.5, 468.5)" d="M 0 0 L 100 0" fill="none" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wioy5f =
    '<svg viewBox="-8.0 425.0 376.0 812.0" ><path transform="translate(-8.0, 425.0)" d="M 0 0 L 376.0000305175781 0 L 376.0000305175781 812 L 0 812 L 0 0 Z" fill="#0089c4" fill-opacity="0.29" stroke="none" stroke-width="1" stroke-opacity="0.29" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

// import 'package:edifyin/providers/otp_data.dart';
// import 'package:edifyin/screens/main_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class OtpRegister extends StatelessWidget {
//   static const routeName = '/otp-register';
//   final _otpController = TextEditingController();
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     final otpData = Provider.of<OtpData>(context);
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             TextField(
//               controller: _otpController,
//             ),
//             IconButton(
//                 icon: Icon(Icons.keyboard_arrow_right),
//                 onPressed: () {
//                   print(_otpController);
//                   // otpData.setOtp(int.parse(_otpController.text));
//                   // otpData.putOtp();
//                   Navigator.of(context).pushReplacementNamed(
//                     MainScreen.routeName
//                   );
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:adobe_xd/page_link.dart';
import 'package:edifyin/providers/auth.dart';
import 'package:edifyin/screens/learning_management_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:edifyin/providers/otp_data.dart';
import 'package:edifyin/screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:edifyin/screens/learning_management_screen.dart';

class OtpRegister extends StatelessWidget {
  static const routeName = '/otp-register';

  OtpRegister({
    Key key,
  }) : super(key: key);

  final _orgCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(),
          SvgPicture.string(
            _svg_srf8nf,
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
            offset: Offset(78.0, 185.8),
            child: SvgPicture.string(
              _svg_yqxwt0,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(99.0, 41.0),
            child: Container(
              width: 75.0,
              height: 75.0,
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
            offset: Offset(183.0, 50.0),
            child: SizedBox(
              width: 58.0,
              child: Text(
                'Name',
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
            offset: Offset(188.0, 85.0),
            child: Text(
              'University',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
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
            offset: Offset(96.0, 214.0),
            child: Text(
              'Learning Management',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(99.0, 293.0),
            child: Text(
              'Communication',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(95.0, 372.0),
            child: Text(
              'Attendance',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 212.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => LearningManagement(),
                ),
              ],
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
                        _svg_fk50xd,
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
                        _svg_wss5gg,
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
            offset: Offset(25.0, 759.0),
            child: SvgPicture.string(
              _svg_8faiye,
              allowDrawingOutsideViewBox: true,
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
        ],
      ),
    );
  }
}

const String _svg_srf8nf =
    '<svg viewBox="0.0 0.0 327.0 812.0" ><defs><filter id="shadow"><feDropShadow dx="5" dy="3" stdDeviation="6"/></filter></defs><path  d="M 0 0 L 327 0 L 327 812 L 0 812 L 0 0 Z" fill="#ffffff" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_yy8juy =
    '<svg viewBox="18.0 55.8 32.0 4.6" ><path transform="translate(18.0, 54.4)" d="M 0 1.446044921875 L 32 1.446044921875 L 32 6 L 0 6 L 0 1.446044921875 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yqxwt0 =
    '<svg viewBox="78.0 185.8 249.0 232.0" ><path transform="translate(-429.0, -1268.0)" d="M 507 1453.844970703125 L 756 1453.844970703125" fill="none" fill-opacity="0.22" stroke="#707070" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-429.0, -1189.0)" d="M 507 1453.844970703125 L 756 1453.844970703125" fill="none" fill-opacity="0.22" stroke="#707070" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-429.0, -1110.0)" d="M 507 1453.844970703125 L 756 1453.844970703125" fill="none" fill-opacity="0.22" stroke="#707070" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-429.0, -1036.0)" d="M 506.9999694824219 1453.844970703125 L 756 1453.844970703125" fill="none" fill-opacity="0.22" stroke="#707070" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e68r4i =
    '<svg viewBox="21.0 120.0 28.0 14.0" ><path transform="translate(21.0, 120.0)" d="M 13.99999904632568 0 L 28 14 L 0 14 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b2q1uc =
    '<svg viewBox="18.0 252.0 27.0 7.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 45.0, 259.0)" d="M 13.49999809265137 0 L 26.99999809265137 7 L 0 7 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y6maj8 =
    '<svg viewBox="18.0 254.0 27.4 15.2" ><path transform="translate(807.0, -3029.0)" d="M -789 3282.97998046875 L -789 3298.218994140625 L -761.595703125 3298.218994140625 L -761.595703125 3282.97998046875 L -775.2601928710938 3290.0654296875 L -789 3282.97998046875 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fk50xd =
    '<svg viewBox="54.0 384.6 27.0 16.9" ><path transform="translate(54.0, 371.12)" d="M 12.31792640686035 16.0892276763916 C 9.189270973205566 14.1739616394043 4.121619701385498 13.64768409729004 1.571446895599365 13.5026683807373 C 0.7145335078239441 13.45415496826172 0 14.10699081420898 0 14.93120956420898 L 0 26.68014526367188 C 0 27.43581008911133 0.6111766695976257 28.06596946716309 1.396899938583374 28.10657501220703 C 3.699226856231689 28.22733306884766 8.357142448425293 28.66976547241211 11.57649803161621 30.29130935668945 C 12.07060813903809 30.54021072387695 12.65647220611572 30.20113563537598 12.65647220611572 29.66536521911621 L 12.65647220611572 16.69355010986328 C 12.65594482421875 16.44728469848633 12.53413200378418 16.22158813476563 12.31792640686035 16.0892276763916 Z M 25.42790031433105 13.5026683807373 C 22.87825584411621 13.64715766906738 17.8100757598877 14.1739616394043 14.6819486618042 16.0892276763916 C 14.46574401855469 16.22158813476563 14.3439302444458 16.45624923706055 14.3439302444458 16.70251274108887 L 14.3439302444458 29.66378021240234 C 14.3439302444458 30.20113182067871 14.93137645721436 30.54073333740234 15.42706871032715 30.29130554199219 C 18.64589881896973 28.67134475708008 23.30117797851563 28.22891426086426 25.60297393798828 28.108154296875 C 26.38869857788086 28.06702423095703 26.99987411499023 27.43686294555664 26.99987411499023 26.68119812011719 L 26.99987411499023 14.93120956420898 C 26.99934768676758 14.10699081420898 26.28481292724609 13.45415496826172 25.42790031433105 13.5026683807373 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wss5gg =
    '<svg viewBox="62.4 374.5 10.1 10.1" ><path transform="translate(51.19, 374.5)" d="M 21.374755859375 5.062377452850342 C 21.374755859375 2.26646876335144 19.10828590393066 0 16.3123779296875 0 C 13.51646900177002 0 11.25 2.26646876335144 11.25 5.062377452850342 C 11.25 7.85828685760498 13.51646900177002 10.12475490570068 16.3123779296875 10.12475490570068 C 19.10828590393066 10.12475490570068 21.374755859375 7.85828685760498 21.374755859375 5.062377452850342 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8faiye =
    '<svg viewBox="25.0 759.0 28.0 28.0" ><path transform="translate(24.44, 758.44)" d="M 14.56250095367432 0.5625 C 6.828629016876221 0.5625 0.5625 6.828629016876221 0.5625 14.56250095367432 C 0.5625 22.29637145996094 6.828629016876221 28.56250190734863 14.56250095367432 28.56250190734863 C 22.29637145996094 28.56250190734863 28.56250190734863 22.29637145996094 28.56250190734863 14.56250095367432 C 28.56250190734863 6.828629016876221 22.29637145996094 0.5625 14.56250095367432 0.5625 Z M 22.6915340423584 16.14314651489258 C 22.6915340423584 16.51572608947754 22.38669395446777 16.82056617736816 22.01411437988281 16.82056617736816 L 16.82056617736816 16.82056617736816 L 16.82056617736816 22.01411437988281 C 16.82056617736816 22.38669395446777 16.51572608947754 22.6915340423584 16.14314651489258 22.6915340423584 L 12.98185539245605 22.6915340423584 C 12.60927486419678 22.6915340423584 12.30443668365479 22.38669395446777 12.30443668365479 22.01411437988281 L 12.30443668365479 16.82056617736816 L 7.11088752746582 16.82056617736816 C 6.738306522369385 16.82056617736816 6.433467864990234 16.51572608947754 6.433467864990234 16.14314651489258 L 6.433467864990234 12.98185539245605 C 6.433467864990234 12.60927486419678 6.738306522369385 12.30443668365479 7.11088752746582 12.30443668365479 L 12.30443668365479 12.30443668365479 L 12.30443668365479 7.11088752746582 C 12.30443668365479 6.738306522369385 12.60927486419678 6.433467864990234 12.98185539245605 6.433467864990234 L 16.14314651489258 6.433467864990234 C 16.51572608947754 6.433467864990234 16.82056617736816 6.738306522369385 16.82056617736816 7.11088752746582 L 16.82056617736816 12.30443668365479 L 22.01411437988281 12.30443668365479 C 22.38669395446777 12.30443668365479 22.6915340423584 12.60927486419678 22.6915340423584 12.98185539245605 L 22.6915340423584 16.14314651489258 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

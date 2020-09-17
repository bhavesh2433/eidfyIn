import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Profile1.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile2 extends StatelessWidget {
  Profile2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 375.0,
            height: 334.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
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
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(114.0, 69.0),
            child: Text(
              'Student Profile',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 22,
                color: const Color(0xff66778e),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(132.0, 111.0),
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
                    bounds: Rect.fromLTWH(30.0, 29.0, 40.9, 42.2),
                    size: Size(100.0, 100.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(11.0, 0.0, 20.0, 20.0),
                          size: Size(40.9, 42.2),
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
                          bounds: Rect.fromLTWH(0.0, 24.3, 40.9, 17.9),
                          size: Size(40.9, 42.2),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_dssaus,
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
            offset: Offset(64.4, 252.0),
            child: SizedBox(
              width: 235.0,
              child: Text(
                'University Name Here',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 22,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(92.0, 285.0),
            child: SizedBox(
              width: 180.0,
              child: Text(
                'Student ID: 196N1A0571',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 15,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(21.0, 72.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Profile1(),
                ),
              ],
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
          ),
          // Adobe XD layer: 'Rectangle 5' (shape)
          Container(
            width: 375.0,
            height: 44.0,
            decoration: BoxDecoration(
              color: const Color(0x00ffffff),
            ),
          ),
          Transform.translate(
            offset: Offset(316.0, 72.0),
            child:
                // Adobe XD layer: 'Icon feather-settin…' (group)
                SizedBox(
              width: 30.0,
              height: 30.0,
              child: Stack(
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
          ),
        ],
      ),
    );
  }
}

const String _svg_dssaus =
    '<svg viewBox="282.0 177.3 40.9 17.9" ><path transform="translate(-2687.89, -971.0)" d="M 2969.893310546875 1166.205322265625 L 3010.803466796875 1166.205322265625 C 3010.803466796875 1166.205322265625 3005.531982421875 1148.28076171875 2990.3486328125 1148.28076171875 C 2975.165283203125 1148.28076171875 2969.893310546875 1166.205322265625 2969.893310546875 1166.205322265625 Z" fill="#0089c4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yy8juy =
    '<svg viewBox="18.0 55.8 32.0 4.6" ><path transform="translate(18.0, 54.4)" d="M 0 1.446044921875 L 32 1.446044921875 L 32 6 L 0 6 L 0 1.446044921875 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iqybcr =
    '<svg viewBox="0.0 0.0 30.0 30.0" ><path transform="translate(-1.5, -1.5)" d="M 26.57743072509766 20.58065605163574 C 26.20624923706055 21.42168998718262 26.38435363769531 22.40396881103516 27.02718734741211 23.06114196777344 L 27.10896301269531 23.14291572570801 C 27.62080764770508 23.65419387817383 27.90840721130371 24.34797286987305 27.90840721130371 25.07142639160156 C 27.90840721130371 25.79487991333008 27.62080764770508 26.4886589050293 27.10896492004395 26.99993515014648 C 26.59769058227539 27.51177787780762 25.90391159057617 27.79937553405762 25.18045806884766 27.79937553405762 C 24.45700645446777 27.79937553405762 23.76322746276855 27.51177787780762 23.25195121765137 26.99993515014648 L 23.17017364501953 26.91815757751465 C 22.51300048828125 26.27532196044922 21.53072357177734 26.09721755981445 20.68968963623047 26.46839714050293 C 19.8658561706543 26.82148551940918 19.33036231994629 27.63008117675781 19.32678413391113 28.5263843536377 L 19.32678413391113 28.75807952880859 C 19.32678413391113 30.26350021362305 18.10639953613281 31.48388862609863 16.60097694396973 31.48388862609863 C 15.09555435180664 31.48388862609863 13.875168800354 30.26350021362305 13.875168800354 28.75807952880859 L 13.875168800354 28.63541793823242 C 13.85357570648193 27.71228408813477 13.26986408233643 26.89616966247559 12.40323162078857 26.57743644714355 C 11.5621976852417 26.20625114440918 10.57991981506348 26.38435554504395 9.922745704650879 27.02719116210938 L 9.840971946716309 27.10896682739258 C 9.329697608947754 27.62081146240234 8.635917663574219 27.90841102600098 7.912463188171387 27.90841102600098 C 7.189008712768555 27.90841102600098 6.495229721069336 27.62081146240234 5.983954429626465 27.10896682739258 C 5.472110748291016 26.59769248962402 5.184513092041016 25.90391540527344 5.184513092041016 25.18045997619629 C 5.184513092041016 24.45700645446777 5.472110748291016 23.76322746276855 5.983954429626465 23.25195121765137 L 6.065728187561035 23.17017555236816 C 6.708561897277832 22.51300430297852 6.88666820526123 21.53072738647461 6.515486717224121 20.68969345092773 C 6.162402153015137 19.86585807800293 5.353806495666504 19.33036422729492 4.457501411437988 19.3267879486084 L 4.225807189941406 19.32678604125977 C 2.720386028289795 19.32678604125977 1.500000357627869 18.10640144348145 1.5 16.60097885131836 C 1.5 15.09555625915527 2.720386028289795 13.87517070770264 4.225808143615723 13.87517070770264 L 4.348468780517578 13.87517070770264 C 5.271604537963867 13.85357856750488 6.087718963623047 13.26986598968506 6.406454086303711 12.40323352813721 C 6.77763557434082 11.56219863891602 6.599530220031738 10.57992172241211 5.956695556640625 9.922747611999512 L 5.874920845031738 9.840972900390625 C 5.363078117370605 9.32969856262207 5.075478553771973 8.635919570922852 5.075478553771973 7.912464618682861 C 5.075478553771973 7.189009189605713 5.363077163696289 6.495229721069336 5.874921798706055 5.983954429626465 C 6.386197090148926 5.472110748291016 7.079976081848145 5.184511661529541 7.803430557250977 5.184512138366699 C 8.526885032653809 5.184512138366699 9.220664024353027 5.472110748291016 9.731938362121582 5.983954906463623 L 9.813713073730469 6.065728664398193 C 10.47088813781738 6.708563804626465 11.45316410064697 6.886668682098389 12.29419803619385 6.515487194061279 L 12.40323066711426 6.515487194061279 C 13.22706699371338 6.162402153015137 13.76255989074707 5.353806018829346 13.76613426208496 4.457501888275146 L 13.76613426208496 4.225807666778564 C 13.76613426208496 2.720385789871216 14.9865198135376 1.499999642372131 16.49194145202637 1.5 C 17.99736404418945 1.5 19.21775054931641 2.720386028289795 19.21775054931641 4.225807666778564 L 19.21775054931641 4.348469257354736 C 19.2213249206543 5.244774341583252 19.75682067871094 6.053369998931885 20.58065605163574 6.406455039978027 C 21.42168807983398 6.777637004852295 22.40396499633789 6.599531650543213 23.0611400604248 5.956696510314941 L 23.14291191101074 5.874922275543213 C 23.65419006347656 5.363079071044922 24.34796905517578 5.075480937957764 25.0714225769043 5.075480937957764 C 25.79487609863281 5.075480937957764 26.48865509033203 5.36307954788208 26.99992942810059 5.874922275543213 C 27.51177406311035 6.386198043823242 27.79937171936035 7.079977512359619 27.79937171936035 7.803431510925293 C 27.79937171936035 8.526886940002441 27.51177406311035 9.22066593170166 26.99992942810059 9.731941223144531 L 26.91815567016602 9.813714981079102 C 26.27531814575195 10.47088813781738 26.09721374511719 11.45316505432129 26.46839332580566 12.2942008972168 L 26.4683952331543 12.40323257446289 C 26.82148170471191 13.22706890106201 27.63007736206055 13.76256084442139 28.52638053894043 13.76613616943359 L 28.75807571411133 13.76613616943359 C 30.26349639892578 13.76613616943359 31.48388481140137 14.98652172088623 31.48388481140137 16.491943359375 C 31.48388481140137 17.99736595153809 30.26349639892578 19.21775245666504 28.75807571411133 19.21775245666504 L 28.63541412353516 19.21775245666504 C 27.73911285400391 19.22132873535156 26.93051719665527 19.75682258605957 26.57743453979492 20.58065795898438 Z" fill="#b8b6b6" stroke="none" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_2f9w0t =
    '<svg viewBox="10.9 10.9 8.2 8.2" ><path transform="translate(-2.6, -2.6)" d="M 21.67742347717285 17.58871078491211 C 21.67742347717285 19.84684371948242 19.84684371948242 21.67742347717285 17.58871078491211 21.67742347717285 C 15.33057880401611 21.67742347717285 13.5 19.84684371948242 13.5 17.58871078491211 C 13.5 15.33057975769043 15.33057880401611 13.50000095367432 17.58871078491211 13.50000095367432 C 19.84684371948242 13.50000095367432 21.67742347717285 15.33057975769043 21.67742347717285 17.58871078491211 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';

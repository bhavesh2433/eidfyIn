import 'dart:io';

import 'package:edifyin/Common/Services.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../providers/auth.dart';
import '../providers/org_data.dart';
import '../screens/home_screen.dart';
import '../screens/login.dart';
import '../screens/register.dart';
import 'package:provider/provider.dart';
import 'package:qrscan/qrscan.dart' as scanner;

import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrgScreen extends StatefulWidget {
  static const routeName = '/registration-screen';

  OrgScreen({
    Key key,
  }) : super(key: key);

  @override
  _OrgScreenState createState() => _OrgScreenState();
}

class _OrgScreenState extends State<OrgScreen> {
  final _orgCodeController = TextEditingController();

  bool isLoading = false;

  _qrCodeLogin(qrCodeUrl) async {
    setState(() {
      isLoading = true;
    });
    try {
      await Services().orgLoginByQrCode(qrCodeUrl).then((value) {
        setState(() {
          isLoading = false;
        });
        Navigator.of(context).pushNamed(Login.routeName, arguments: qrCodeUrl);
      });
    } on HttpException catch (error) {
      setState(() {
        isLoading = false;
      });
      _showErrorDialog(error.toString());
    } catch (error) {
      setState(() {
        isLoading = false;
      });
      throw HttpException(error.toString());
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text('An Error Occured!'),
              content: Text(message),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text('OK'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background_image.png",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: mediaQuery.height * 0.1,
                ),
                Container(
                  width: mediaQuery.height * 0.2,
                  height: mediaQuery.height * 0.2,
                  child: Image.asset('assets/logo_gif.gif'),
                ),
                Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: mediaQuery.height * 0.1,
                      ),
                      Container(
                        width: mediaQuery.width * 0.7,
                        padding: EdgeInsets.only(left: 5, right: 10),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: mediaQuery.width * 0.01,
                            ),
                            Container(
                              width: mediaQuery.width * 0.4,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Organization Code',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Calibri',
                                    fontSize: 19,
                                    color: const Color(0x80707070),
                                  ),
                                  border: InputBorder.none,
                                ),
                                onSubmitted: (_) {
                                  Provider.of<OrgData>(context)
                                      .fetchGUID(_orgCodeController.text);
                                  Navigator.of(context)
                                      .pushNamed(Login.routeName);
                                },
                                textCapitalization:
                                    TextCapitalization.characters,
                                controller: _orgCodeController,
                                textInputAction: TextInputAction.done,
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.center,
                              ),
                            ),
                            InkWell(
                              child: Container(
                                width: mediaQuery.width * 0.1,
                                height: mediaQuery.height * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(99999999)),
                                  color: const Color(0xff127fb2),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: mediaQuery.height * 0.03,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                if (_orgCodeController.text.isNotEmpty) {
                                  Provider.of<OrgData>(context, listen: false)
                                      .fetchGUID(_orgCodeController.text);
                                  // Provider.of<Auth>(context, listen: false)
                                  //     .authenticate('0007', 'testing1');
                                  Navigator.of(context).pushNamed(
                                      Login.routeName,
                                      arguments: _orgCodeController.text);
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                            title: Text('An Error Occured!'),
                                            content: Text(
                                                'Please enter the Organisation Code!'),
                                            actions: <Widget>[
                                              FlatButton(
                                                  onPressed: () {
                                                    Navigator.of(ctx).pop();
                                                  },
                                                  child: Text('OK'))
                                            ],
                                          ));
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.03,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // SizedBox(
                            //   width: mediaQuery.width * 0.01,
                            // ),
                            SvgPicture.string(
                              '<svg viewBox="67.5 468.5 100.0 1.0" ><path transform="translate(67.5, 468.5)" d="M 0 0 L 100 0" fill="none" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: mediaQuery.width * 0.02,
                            ),
                            Text(
                              'Or',
                              style: TextStyle(
                                fontFamily: 'Calibri',
                                fontSize: 22,
                                color: const Color(0xff127fb2),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: mediaQuery.width * 0.02,
                            ),
                            SvgPicture.string(
                              '<svg viewBox="207.5 468.5 100.0 1.0" ><path transform="translate(207.5, 468.5)" d="M 0 0 L 100 0" fill="none" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                            // SizedBox(
                            //   width: mediaQuery.width * 0.01,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.06,
                ),
                isLoading
                    ? CircularProgressIndicator()
                    : GestureDetector(
                        onTap: () async {
                          String cameraScanResult = await scanner.scan();
                          _qrCodeLogin(cameraScanResult);
                        },
                        child: Container(
                          height: mediaQuery.height * 0.1,
                          width: mediaQuery.width * 0.2,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: Colors.black26),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Container(
                            child: SvgPicture.string(
                              '<svg viewBox="162.3 530.2 50.7 50.7" ><path transform="translate(159.69, 528.26)" d="M 18.42699241638184 5.099291324615479 L 5.741959571838379 5.099291324615479 L 5.741959571838379 17.78432464599609 L 18.42699241638184 17.78432464599609 L 18.42699241638184 5.099291324615479 Z M 21.59825134277344 1.928033232688904 L 21.59825134277344 20.9555835723877 L 2.570701599121094 20.9555835723877 L 2.570701599121094 1.928033232688904 L 21.59825134277344 1.928033232688904 Z M 8.91321849822998 8.270549774169922 L 15.25573539733887 8.270549774169922 L 15.25573539733887 14.61306667327881 L 8.913219451904297 14.61306667327881 L 8.91321849822998 8.270549774169922 Z M 50.13957977294922 5.099291801452637 L 37.45454788208008 5.099291801452637 L 37.45454788208008 17.78432464599609 L 50.13957977294922 17.78432464599609 L 50.13957977294922 5.099291324615479 Z M 53.31083679199219 1.928033709526062 L 53.31083679199219 20.9555835723877 L 34.28328704833984 20.9555835723877 L 34.28328704833984 1.928033232688904 L 53.31083679199219 1.928033232688904 Z M 40.62580490112305 8.270549774169922 L 46.96832275390625 8.270549774169922 L 46.96832275390625 14.61306667327881 L 40.62580490112305 14.61306667327881 L 40.62580490112305 8.270549774169922 Z M 18.42699813842773 36.81187438964844 L 5.741964340209961 36.81187438964844 L 5.741964340209961 49.49690628051758 L 18.42699813842773 49.49690628051758 L 18.42699813842773 36.81187438964844 Z M 21.59825706481934 33.64061737060547 L 21.59825706481934 52.66816711425781 L 2.570705890655518 52.66816711425781 L 2.570705890655518 33.64061737060547 L 21.59825706481934 33.64061737060547 Z M 8.913223266601563 39.98313522338867 L 15.25573921203613 39.98313522338867 L 15.25573921203613 46.32565307617188 L 8.913224220275879 46.32565307617188 L 8.913223266601563 39.98313522338867 Z M 24.7695140838623 1.928033947944641 L 27.94077301025391 1.928033947944641 L 27.94077301025391 5.099291801452637 L 24.7695140838623 5.099291801452637 L 24.7695140838623 1.928033947944641 Z M 27.94077301025391 5.099291801452637 L 31.11203002929688 5.099291801452637 L 31.11203002929688 8.270549774169922 L 27.94077301025391 8.270549774169922 L 27.94077301025391 5.099291801452637 Z M 24.7695140838623 8.270549774169922 L 27.94077301025391 8.270549774169922 L 27.94077301025391 11.44180774688721 L 24.7695140838623 11.44180774688721 L 24.7695140838623 8.270549774169922 Z M 27.94077301025391 11.44180774688721 L 31.11203002929688 11.44180774688721 L 31.11203002929688 14.61306667327881 L 27.94077301025391 14.61306667327881 L 27.94077301025391 11.44180774688721 Z M 24.7695140838623 14.61306667327881 L 27.94077301025391 14.61306667327881 L 27.94077301025391 17.78432464599609 L 24.7695140838623 17.78432464599609 L 24.7695140838623 14.61306667327881 Z M 27.94077301025391 17.78432464599609 L 31.11203002929688 17.78432464599609 L 31.11203002929688 20.9555835723877 L 27.94077301025391 20.9555835723877 L 27.94077301025391 17.78432464599609 Z M 24.7695140838623 20.9555835723877 L 27.94077301025391 20.9555835723877 L 27.94077301025391 24.1268424987793 L 24.7695140838623 24.1268424987793 L 24.7695140838623 20.9555835723877 Z M 24.7695140838623 27.2981014251709 L 27.94077301025391 27.2981014251709 L 27.94077301025391 30.4693603515625 L 24.7695140838623 30.4693603515625 L 24.7695140838623 27.2981014251709 Z M 27.94077301025391 30.4693603515625 L 31.11203002929688 30.4693603515625 L 31.11203002929688 33.64062118530273 L 27.94077301025391 33.64062118530273 L 27.94077301025391 30.4693603515625 Z M 24.7695140838623 33.64062118530273 L 27.94077301025391 33.64062118530273 L 27.94077301025391 36.8118782043457 L 24.7695140838623 36.8118782043457 L 24.7695140838623 33.64062118530273 Z M 27.94077301025391 36.8118782043457 L 31.11203002929688 36.8118782043457 L 31.11203002929688 39.98313903808594 L 27.94077301025391 39.98313903808594 L 27.94077301025391 36.8118782043457 Z M 24.7695140838623 39.98313903808594 L 27.94077301025391 39.98313903808594 L 27.94077301025391 43.15439605712891 L 24.7695140838623 43.15439605712891 L 24.7695140838623 39.98313903808594 Z M 27.94077301025391 43.15439605712891 L 31.11203002929688 43.15439605712891 L 31.11203002929688 46.32565689086914 L 27.94077301025391 46.32565689086914 L 27.94077301025391 43.15439605712891 Z M 24.7695140838623 46.32565689086914 L 27.94077301025391 46.32565689086914 L 27.94077301025391 49.49691390991211 L 24.7695140838623 49.49691390991211 L 24.7695140838623 46.32565689086914 Z M 27.94077301025391 49.49691390991211 L 31.11203002929688 49.49691390991211 L 31.11203002929688 52.66817474365234 L 27.94077301025391 52.66817474365234 L 27.94077301025391 49.49691390991211 Z M 50.13958358764648 27.29810905456543 L 53.31083679199219 27.29810905456543 L 53.31083679199219 30.46936798095703 L 50.13957977294922 30.46936798095703 L 50.13958358764648 27.29810905456543 Z M 5.741966724395752 27.29810905456543 L 8.913224220275879 27.29810905456543 L 8.913224220275879 30.46936798095703 L 5.741966724395752 30.46936798095703 L 5.741966724395752 27.29810905456543 Z M 8.913224220275879 24.12685012817383 L 12.08448314666748 24.12685012817383 L 12.08448314666748 27.29810905456543 L 8.913224220275879 27.29810905456543 L 8.913224220275879 24.12685012817383 Z M 2.57070779800415 24.12685012817383 L 5.741966724395752 24.12685012817383 L 5.741966724395752 27.29810905456543 L 2.570708274841309 27.29810905456543 L 2.57070779800415 24.12685012817383 Z M 15.25574111938477 24.12685012817383 L 18.42700004577637 24.12685012817383 L 18.42700004577637 27.29810905456543 L 15.25574111938477 27.29810905456543 L 15.25574111938477 24.12685012817383 Z M 18.42700004577637 27.29810905456543 L 21.59825897216797 27.29810905456543 L 21.59825897216797 30.46936798095703 L 18.42700004577637 30.46936798095703 L 18.42700004577637 27.29810905456543 Z M 21.59825897216797 24.12685012817383 L 24.76951599121094 24.12685012817383 L 24.76951599121094 27.29810905456543 L 21.59825706481934 27.29810905456543 L 21.59825897216797 24.12685012817383 Z M 31.11203384399414 27.29810905456543 L 34.28329467773438 27.29810905456543 L 34.28329467773438 30.46936798095703 L 31.11203384399414 30.46936798095703 L 31.11203384399414 27.29810905456543 Z M 34.28329467773438 24.12685012817383 L 37.45455169677734 24.12685012817383 L 37.45455169677734 27.29810905456543 L 34.28329467773438 27.29810905456543 L 34.28329467773438 24.12685012817383 Z M 37.45455169677734 27.29810905456543 L 40.62581253051758 27.29810905456543 L 40.62581253051758 30.46936798095703 L 37.45455169677734 30.46936798095703 L 37.45455169677734 27.29810905456543 Z M 40.62581253051758 24.12685012817383 L 43.79706954956055 24.12685012817383 L 43.79706954956055 27.29810905456543 L 40.62581253051758 27.29810905456543 L 40.62581253051758 24.12685012817383 Z M 43.79706954956055 27.29810905456543 L 46.96833038330078 27.29810905456543 L 46.96833038330078 30.46936798095703 L 43.79706954956055 30.46936798095703 L 43.79706954956055 27.29810905456543 Z M 46.96833038330078 24.12685012817383 L 50.13958740234375 24.12685012817383 L 50.13958740234375 27.29810905456543 L 46.96833038330078 27.29810905456543 L 46.96833038330078 24.12685012817383 Z M 50.13958740234375 33.640625 L 53.31084442138672 33.640625 L 53.31084442138672 36.81188583374023 L 50.13958358764648 36.81188583374023 L 50.13958740234375 33.640625 Z M 31.11203765869141 33.640625 L 34.28329849243164 33.640625 L 34.28329849243164 36.81188583374023 L 31.11203765869141 36.81188583374023 L 31.11203765869141 33.640625 Z M 34.28329849243164 30.46936798095703 L 37.45455551147461 30.46936798095703 L 37.45455551147461 33.640625 L 34.28329849243164 33.640625 L 34.28329849243164 30.46936798095703 Z M 37.45455551147461 33.640625 L 40.62581634521484 33.640625 L 40.62581634521484 36.81188583374023 L 37.45455551147461 36.81188583374023 L 37.45455551147461 33.640625 Z M 43.79707336425781 33.640625 L 46.96833038330078 33.640625 L 46.96833038330078 36.81188583374023 L 43.79707336425781 36.81188583374023 L 43.79707336425781 33.640625 Z M 46.96833038330078 30.46936798095703 L 50.13959121704102 30.46936798095703 L 50.13959121704102 33.640625 L 46.96833038330078 33.640625 L 46.96833038330078 30.46936798095703 Z M 50.13959121704102 39.9831428527832 L 53.31084823608398 39.9831428527832 L 53.31084823608398 43.15440368652344 L 50.13959121704102 43.15440368652344 L 50.13959121704102 39.9831428527832 Z M 31.11204147338867 39.9831428527832 L 34.28329849243164 39.9831428527832 L 34.28329849243164 43.15440368652344 L 31.11204147338867 43.15440368652344 L 31.11204147338867 39.9831428527832 Z M 34.28329849243164 36.81188583374023 L 37.45455932617188 36.81188583374023 L 37.45455932617188 39.9831428527832 L 34.28329849243164 39.9831428527832 L 34.28329849243164 36.81188583374023 Z M 40.62581634521484 36.81188583374023 L 43.79707717895508 36.81188583374023 L 43.79707717895508 39.9831428527832 L 40.62581634521484 39.9831428527832 L 40.62581634521484 36.81188583374023 Z M 43.79707717895508 39.9831428527832 L 46.96833419799805 39.9831428527832 L 46.96833419799805 43.15440368652344 L 43.79707717895508 43.15440368652344 L 43.79707717895508 39.9831428527832 Z M 46.96833419799805 36.81188583374023 L 50.13959503173828 36.81188583374023 L 50.13959503173828 39.9831428527832 L 46.96833419799805 39.9831428527832 L 46.96833419799805 36.81188583374023 Z M 50.13959503173828 46.32566070556641 L 53.31084823608398 46.32566070556641 L 53.31084823608398 49.49692153930664 L 50.13959121704102 49.49692153930664 L 50.13959503173828 46.32566070556641 Z M 34.28330230712891 43.15440368652344 L 37.45456314086914 43.15440368652344 L 37.45456314086914 46.32566070556641 L 34.28330230712891 46.32566070556641 L 34.28330230712891 43.15440368652344 Z M 37.45456314086914 46.32566070556641 L 40.62582015991211 46.32566070556641 L 40.62582015991211 49.49692153930664 L 37.45456314086914 49.49692153930664 L 37.45456314086914 46.32566070556641 Z M 40.62582015991211 43.15440368652344 L 43.79708099365234 43.15440368652344 L 43.79708099365234 46.32566070556641 L 40.62582015991211 46.32566070556641 L 40.62582015991211 43.15440368652344 Z M 43.79708099365234 46.32566070556641 L 46.96833801269531 46.32566070556641 L 46.96833801269531 49.49692153930664 L 43.79708099365234 49.49692153930664 L 43.79708099365234 46.32566070556641 Z M 34.28330230712891 49.49692153930664 L 37.45456314086914 49.49692153930664 L 37.45456314086914 52.66817855834961 L 34.28330230712891 52.66817855834961 L 34.28330230712891 49.49692153930664 Z M 40.62582015991211 49.49692153930664 L 43.79708099365234 49.49692153930664 L 43.79708099365234 52.66817855834961 L 40.62582015991211 52.66817855834961 L 40.62582015991211 49.49692153930664 Z M 46.96833801269531 49.49692153930664 L 50.13959884643555 49.49692153930664 L 50.13959884643555 52.66817855834961 L 46.96833801269531 52.66817855834961 L 46.96833801269531 49.49692153930664 Z" fill="none" stroke="#c2321b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
                Text(
                  'Scan QR Code',
                  style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 20,
                    color: const Color(0xff707070),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: mediaQuery.height * 0.08,
                ),
                Text(
                  'Powered By',
                  style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 18,
                    color: const Color(0xff000000),
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: mediaQuery.height * 0.2,
                  height: mediaQuery.height * 0.03,
                  child: Image.asset('assets/images/team_in.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

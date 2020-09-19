import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../models/http_exception.dart';
import '../providers/otp_data.dart';
import '../screens/home_screen.dart';
import '../screens/login.dart';
import '../screens/otp_screen.dart';

import 'package:provider/provider.dart';

import 'package:adobe_xd/page_link.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../components/back_button.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register-screen';

  RegisterScreen({
    Key key,
  }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final _codeController = TextEditingController();
  final _mobileNoController = TextEditingController();
  final _mobileNoFocusNode = FocusNode();

  bool isLoading = false;

  void _showErrorDialog(String message, BuildContext context) {
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

  Future<void> submit(
      BuildContext context, Map<String, dynamic> requiredData) async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    requiredData['code'] = int.parse(_codeController.text);
    setState(() {
      isLoading = true;
    });
    try {
      await Provider.of<OtpData>(context, listen: false)
          .fetchRegisterData(requiredData);
      Navigator.of(context)
          .pushReplacementNamed(OtpScreen.routeName, arguments: requiredData);
    } catch (error) {
      throw error;
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final requiredData =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    print(requiredData);

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
            Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Transform.translate(
                    offset: Offset(-135.0, 50.0),
                    child: BackwardButton(),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.1,
                  ),
                  Container(
                    width: mediaQuery.height * 0.2,
                    height: mediaQuery.height * 0.2,
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
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              child: Container(
                                width: mediaQuery.width * 0.4,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Code',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Calibri',
                                      fontSize: 19,
                                      color: const Color(0x80707070),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  onFieldSubmitted: (_) {
                                    FocusScope.of(context)
                                        .requestFocus(_mobileNoFocusNode);
                                  },
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      _showErrorDialog(
                                          'Please enter a Code !', context);
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {},
                                  controller: _codeController,
                                  textInputAction: TextInputAction.next,
                                  textAlign: TextAlign.start,
                                  textAlignVertical: TextAlignVertical.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mediaQuery.height * 0.05,
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
                              child: Container(
                                width: mediaQuery.width * 0.4,
                                margin: EdgeInsets.only(bottom: 5),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Mobile No.',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Calibri',
                                      fontSize: 19,
                                      color: const Color(0x80707070),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  onSaved: (value) {
                                    requiredData['mobileNo'] = value;
                                  },
                                  focusNode: _mobileNoFocusNode,
                                  onFieldSubmitted: (_) {
                                    submit(context, requiredData);
                                  },
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      _showErrorDialog(
                                          'Please enter a Mobile No. !',
                                          context);
                                    }
                                    return null;
                                  },
                                  controller: _mobileNoController,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.done,
                                  textAlign: TextAlign.start,
                                  textAlignVertical: TextAlignVertical.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mediaQuery.height * 0.06,
                            ),
                            InkWell(
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
                                width: MediaQuery.of(context).size.width * 0.7,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: Center(
                                  child: isLoading
                                      ? CircularProgressIndicator()
                                      : Text(
                                          'Validate',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 22,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                ),
                              ),
                              onTap: () {
                                submit(context, requiredData);
                              },
                            ),
                            SizedBox(
                              height: mediaQuery.height * 0.02,
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: const Color(0xff0e84b9),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x29000000),
                                        offset: Offset(0, 3),
                                        blurRadius: 6,
                                      ),
                                    ]),
                                width: MediaQuery.of(context).size.width * 0.7,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: Center(
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 22,
                                      color: const Color(0xffffffff),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacementNamed(Login.routeName);
                              },
                            ),
                            SizedBox(
                              height: mediaQuery.height * 0.01,
                            ),
                          ]),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ));
  }
}

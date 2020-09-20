import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import '../providers/otp_data.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:provider/provider.dart';

class OtpScreen extends StatefulWidget {
  static const routeName = '/otp-screen';

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _passwordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();

  var _isLoading = false;

  Map<String, dynamic> otpData = {
    'id': null,
    'otp': null,
    'password': '',
    'confirmPassword': ''
  };

  @override
  void dispose() {
    super.dispose();
  }

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

  Future<void> _submit(Map<String, dynamic> requiredData) async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    try {
      Provider.of<OtpData>(context, listen: false).putOtp(requiredData);
    } catch (error) {
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final requiredData =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    print(requiredData);

    print(requiredData['id']);
    // otpData['id'] = requiredData['id'];

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
                  SizedBox(
                    height: mediaQuery.height * 0.09,
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
                  SizedBox(
                    height: mediaQuery.height * 0.07,
                  ),
                  Text(
                    "OTP Code",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    width: mediaQuery.width - 50,
                    child: OTPTextField(
                      keyboardType: TextInputType.number,
                      length: 6,
                      fieldStyle: FieldStyle.box,
                      fieldWidth: 50,
                      onCompleted: (value) {
                        Focus.of(context).requestFocus(
                          _passwordFocusNode,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive the OTP ?",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        " Resend again",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    width: mediaQuery.width * 0.8,
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
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'New Password',
                          labelStyle: TextStyle(
                            fontFamily: 'Calibri',
                            fontSize: 19,
                            color: const Color(0x80707070),
                          ),
                          border: InputBorder.none),
                      obscureText: true,
                      textAlign: TextAlign.left,
                      controller: _passwordController,
                      onFieldSubmitted: (_) {
                        Focus.of(context)
                            .requestFocus(_confirmPasswordFocusNode);
                      },
                      focusNode: _passwordFocusNode,
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (value.isEmpty) {
                          _showErrorDialog(
                              'Please enter a valid password', context);
                        }
                        return null;
                      },
                      onSaved: (value) {
                        print(value);
                        otpData['password'] = value;
                      },
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),
                  Container(
                    width: mediaQuery.width * 0.8,
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
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(
                            fontFamily: 'Calibri',
                            fontSize: 19,
                            color: const Color(0x80707070),
                          ),
                          border: InputBorder.none),
                      obscureText: true,
                      textAlign: TextAlign.left,
                      controller: _confirmPasswordController,
                      onFieldSubmitted: (_) {
                        Focus.of(context).dispose();
                      },
                      focusNode: _confirmPasswordFocusNode,
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (value.isEmpty) {
                          _showErrorDialog(
                              'Please enter a valid password', context);
                        } else if (value != _passwordController.text) {
                          _showErrorDialog(
                              "Password and confirm password is not matching",
                              context);
                        }
                        return null;
                      },
                      onSaved: (value) {
                        otpData['confirmPassword'] = value;
                      },
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                  SizedBox(
                    height: 50,
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
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Center(
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
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}

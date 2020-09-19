
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/http_exception.dart';
import '../screens/home_screen.dart';
import '../components/back_button.dart';



import '../widgets/modal_bottom_sheet.dart';
import '../components/login_screen_components/login_button.dart';
import '../components/login_screen_components/register_button.dart';
import '../providers/auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';
  Login({
    Key key,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();

  Map<String, String> _authData = {
    'username': '',
    'password': '',
  };

  Map<String, String> otpData = {
    'orgCode': '',
    'registrationTypeText': ''
  };

  String _registerAs = null;
  bool _isLoading = false;

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void setRegisterAs(
      String selectedRegisterAs,
      BuildContext context) {
    setState(() {
      _registerAs = selectedRegisterAs;
      otpData['registrationTypeText'] = _registerAs;
    });
    Navigator.of(context).pop();
    print(_registerAs);
  }

  void checkRegisterAs(BuildContext context, String orgCode) {
    if (_registerAs == null)
      showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          builder: (_) {
            return ModalBottomSheet(
                setRegisterAs,
              context,
              orgCode
            );
          });
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

  Future<void> submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    setState(() {
      _isLoading = true;
    });

    try {
      await Provider.of<Auth>(context, listen: false)
          .login(
          _authData['username'],
          _authData['password']
      );
      Navigator.of(context)
          .pushReplacementNamed(HomeScreen.routeName);
    } on HttpException catch (error) {
      var errorMessage = 'Authentication failed';
      if (error.toString().contains('INVALID USERNAME')) {
        errorMessage = 'This is not a valid email address.';
      } else if (error.toString().contains('USERNAME NOT FOUND')) {
        errorMessage = 'Could not find a user with that email.';
      } else if (error.toString().contains('INVALID PASSWORD')) {
        errorMessage = 'Invalid Password.';
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      throw HttpException(error);
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    final orgCode = ModalRoute.of(context)
        .settings.arguments as String;

    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Transform.translate(
              //   offset: Offset(-120.0, 35.0),
              //   child: SvgPicture.string(
              //     '<svg viewBox="0.0 170.1 182.8 339.2" ><path transform="translate(183.32, -219.35)" d="M -1.202117919921875 689.7034912109375 L -1.202117919921875 673.0969848632813 C -1.202117919921875 672.4208984375 -0.9652442932128906 671.9002075195313 -0.6023025512695313 671.5265502929688 L -1.273345947265625 469.6636352539063 C -1.273345947265625 469.6636352539063 10.59738540649414 416.1797485351563 -58.00275039672852 406.65625 C -126.6034545898438 397.1327514648438 -170.7170257568359 366.0482788085938 -183.3209838867188 422.0003662109375 L -183.3209838867188 689.3286743164063 C -183.3209838867188 689.3286743164063 -175.7060394287109 713.6173706054688 -160.6072998046875 723.2318725585938 C -145.5090942382813 732.846923828125 -38.3757438659668 726.6300659179688 -38.3757438659668 726.6300659179688 C -38.3757438659668 726.6300659179688 -13.77724838256836 726.625 -1.029689788818359 690.6651000976563 C -1.137672424316406 690.388671875 -1.202117919921875 690.0709228515625 -1.202117919921875 689.7034912109375 Z" fill="#0098cd" fill-opacity="0.05" stroke="none" stroke-width="1" stroke-opacity="0.05" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
              //     allowDrawingOutsideViewBox: true,
              //     fit: BoxFit.fill,
              //   ),
              // ),
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
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: mediaQuery.height * 0.1,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: mediaQuery.width * 0.01,
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SvgPicture.string(
                                '<svg viewBox="4.3 0.0 9.9 9.9" ><path transform="translate(-2.44, -4.5)" d="M 16.61186790466309 9.430933952331543 C 16.61186790466309 12.15421390533447 14.40421390533447 14.36186790466309 11.68093395233154 14.36186790466309 C 8.957653999328613 14.36186790466309 6.750000953674316 12.15421390533447 6.75 9.430934906005859 C 6.75 6.707654476165771 8.957653999328613 4.499999523162842 11.68093490600586 4.500000476837158 C 14.40421390533447 4.500000476837158 16.61186790466309 6.707655906677246 16.61186790466309 9.430934906005859 Z" fill="#707070" stroke="none" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: mediaQuery.height * 0.003,
                              ),
                              SvgPicture.string(
                                '<svg viewBox="0.0 14.8 18.5 7.4" ><path transform="translate(-1.5, -7.71)" d="M 19.99100112915039 29.89640045166016 L 19.99100112915039 27.43093490600586 C 19.99100112915039 24.7076530456543 17.78334617614746 22.5 15.06006622314453 22.5 L 6.430933952331543 22.5 C 3.707653760910034 22.5 1.499999165534973 24.7076530456543 1.5 27.43093490600586 L 1.5 29.89640045166016" fill="#707070" stroke="none" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                          Container(
                            width: mediaQuery.width * 0.65,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Username',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Calibri',
                                    fontSize: 19,
                                    color: const Color(0x80707070),
                                  ),
                                  border: InputBorder.none),
                              controller: _usernameController,
                              onFieldSubmitted: (_) {
                                FocusScope.of(context)
                                    .requestFocus(_passwordFocusNode);
                              },
                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value.isEmpty) {
                                  _showErrorDialog('Please enter a Username!');
                                }
                                return null;
                              },
                              onSaved: (value) {
                                print(value);
                                _authData['username'] = value;
                              },
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: mediaQuery.width * 0.01,
                          ),
                          SvgPicture.string(
                            '<svg viewBox="83.1 383.5 17.2 24.3" ><path transform="matrix(-0.309017, -0.951057, 0.951057, -0.309017, 89.92, 407.8)" d="M 10.63298416137695 7.187304496765137 C 9.882543563842773 9.311787605285645 7.721067905426025 10.99234867095947 5.337630748748779 10.99234867095947 C 2.314734935760498 10.99234867095947 0 8.519070625305176 0 5.496174812316895 C 0 2.473278045654297 2.420430660247803 0 5.443326473236084 0 C 7.82676362991333 0 9.887828826904297 1.680560111999512 10.63298416137695 3.80504322052002 L 16.06574058532715 3.80504322052002 L 16.06574058532715 0.4227819442749023 L 19.71752548217773 0.4227819442749023 L 19.71752548217773 3.80504322052002 L 21.98469734191895 3.80504322052002 L 21.98469734191895 7.187304496765137 L 10.63298416137695 7.187304496765137 Z M 5.475035190582275 3.672924995422363 C 4.470926761627197 3.672924995422363 3.651785373687744 4.4920654296875 3.651785373687744 5.496174812316895 C 3.651785373687744 6.500283241271973 4.470926761627197 7.319422721862793 5.475035190582275 7.319422721862793 C 6.47914457321167 7.319422721862793 7.298285007476807 6.500283241271973 7.298285007476807 5.496174812316895 C 7.298285007476807 4.4920654296875 6.47914457321167 3.672924995422363 5.475035190582275 3.672924995422363 Z" fill="#707070" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            width: mediaQuery.width * 0.65,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Password',
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
                                submit();
                              },
                              focusNode: _passwordFocusNode,
                              textInputAction: TextInputAction.done,
                              validator: (value) {
                                if (value.isEmpty) {
                                  _showErrorDialog(
                                      'Please enter a valid password');
                                }
                                return null;
                              },
                              onSaved: (value) {
                                print(value);
                                _authData['password'] = value;
                              },
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.09,
                    ),
                    if (_isLoading)
                      CircularProgressIndicator()
                    else
                      LoginButton(submit),
                    SizedBox(
                      height: mediaQuery.height * 0.02,
                    ),
                    RegisterButton(
                        checkRegisterAs,
                        orgCode,
                        _isLoading
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.04,
                    ),
                    InkWell(
                      child: SizedBox(
                        width: 178.0,
                        child: Text(
                          'Forgot password ?',
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            fontSize: 20,
                            color: const Color(0xff707070),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onTap: () {

                      },
                      // padding:
                      // EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
                      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      // textColor: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


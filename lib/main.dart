import 'package:edifyin/providers/otp_data.dart';
import 'package:edifyin/screens/authentication_screen.dart';
import 'package:edifyin/screens/login.dart';

import './providers/display_data.dart';
import './screens/list_screen.dart';

import './providers/auth.dart';
import './providers/org_data.dart';
import 'package:provider/provider.dart';

import './screens/org_intro_screen.dart';
import 'package:flutter/material.dart';

import 'screens/main_screen.dart';
import './screens/otp_register_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (ctx) => OrgData(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => DisplayData(),
        ),ChangeNotifierProvider(
          create: (ctx) => OtpData(),
        )
    ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Chat App',
            theme: ThemeData(
                primarySwatch: Colors.indigo,
                accentColor: Colors.deepPurple,
                accentColorBrightness: Brightness.dark,
            ),
            home: Login(),
          routes: {
              MainScreen.routeName : (ctx) => MainScreen(),
              ListScreen.routeName : (ctx) => ListScreen(),
              OtpRegister.routeName: (ctx) => OtpRegister()
          },
        ),
      );
  }
}


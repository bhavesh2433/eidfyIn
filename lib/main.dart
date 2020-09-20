import 'package:edifyin/models/assignmentData.dart';
import 'package:edifyin/providers/assignments_data.dart';
import 'package:edifyin/screens/assignment_detail.dart';

import './screens/otp_screen.dart';

import './screens/home_screen.dart';
import './providers/otp_data.dart';

import './screens/login.dart';
import './screens/org_screen.dart';
import './screens/register.dart';
import 'package:provider/provider.dart';

import './providers/display_data.dart';
import './screens/list_screen.dart';

import './providers/auth.dart';
import './providers/org_data.dart';

import 'package:flutter/material.dart';

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
          create: (ctx) => DrawerDisplayData(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OtpData(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => AssignmentsData(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.deepPurple,
          accentColorBrightness: Brightness.dark,
        ),
        home: OrgScreen(),
        routes: {
          // HomeScreen.routeName: (ctx) => HomeScreen(),
          ListScreen.routeName: (ctx) => ListScreen(),
          OrgScreen.routeName: (ctx) => OrgScreen(),
          OtpScreen.routeName: (ctx) => OtpScreen(),
          RegisterScreen.routeName: (ctx) => RegisterScreen(),
          Login.routeName: (ctx) => Login(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          AssignmentDetail.routeName: (ctx) => AssignmentDetail()
        },
      ),
    );
  }
}

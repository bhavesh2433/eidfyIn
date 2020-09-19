import 'package:flutter/material.dart';
import '../screens/register.dart';

class ModalBottomSheet extends StatelessWidget {
  final Function(String setSelected, BuildContext context) setRegister;
  final BuildContext ctx;
  final String orgCode;

  ModalBottomSheet(this.setRegister, this.ctx, this.orgCode);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 10),
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffffffff),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  // bottom: 5
                ),
                // width: MediaQuery
                //     .of(context)
                //     .size
                //     .width * 0.2,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffffffff),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Register As',
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 17,
                    color: const Color(0xff656363),
                    letterSpacing: -0.136,
                    fontWeight: FontWeight.w600,
                  ),
                  // textAlign: TextAlign.center,
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 5,
                    right: 5,
                    // bottom: 5
                  ),
                  // width: MediaQuery
                  //     .of(context)
                  //     .size
                  //     .width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffffffff),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Student',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 20,
                      color: const Color(0xff007aff),
                      letterSpacing: -0.48,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: () {
                  setRegister('Student', ctx);
                  Navigator
                      .of(context)
                      .pushNamed(
                    RegisterScreen.routeName,
                    arguments: {
                      'orgCode': orgCode,
                      'registerAs': 'Student',
                      'id': 3
                    }
                  );
                },
              ),
              Divider(
                color: Colors.black,
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 5,
                    right: 5,
                    // bottom: 5
                  ),
                  // width: MediaQuery
                  //     .of(context)
                  //     .size
                  //     .width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffffffff),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Employee',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 20,
                      color: const Color(0xff007aff),
                      letterSpacing: -0.48,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: () {
                  setRegister('Employee', ctx);
                  Navigator.of(context)
                      .pushNamed(
                      RegisterScreen.routeName,
                      arguments: {
                  'orgCode': orgCode,
                  'registerAs': 'Employee',
                  'id': 4
                  });
                },
              ),
              Divider(
                color: Colors.black,
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 5,
                    right: 5,
                    // bottom: 5
                  ),
                  // width: MediaQuery
                  //     .of(context)
                  //     .size
                  //     .width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffffffff),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Parent',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 20,
                      color: const Color(0xff007aff),
                      letterSpacing: -0.48,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: () {
                  setRegister('Parent', ctx);
                  Navigator.of(context)
                      .pushNamed(
                      RegisterScreen.routeName,
                      arguments: {
                        'orgCode': orgCode,
                        'registerAs': 'Parent',
                        'id': 5
                      });
                },
              )
            ],
          ),
        ),
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
            // width: MediaQuery
            //     .of(context)
            //     .size
            //     .width * 0.2,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffffffff),
            ),
            alignment: Alignment.center,
            child: Text(
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
          onTap: () {
            setRegister(null, ctx);
          },
        )
      ],
    );
  }
}

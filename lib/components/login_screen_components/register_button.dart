import 'package:flutter/material.dart';
import '../../screens/register.dart';
import '../../screens/org_screen.dart';

class RegisterButton extends StatelessWidget {
  final Function(
      BuildContext context,
      String orgCode) checkRegisterAs;
  final String orgCode;
  final bool isLoading;

  RegisterButton(
      this.checkRegisterAs,
      this.orgCode,
      this.isLoading
      );


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: const Color(0xff0089c4),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        width: mediaQuery.width * 0.7,
        height: mediaQuery.height * 0.07,
        child: Center(
          child: Text(
            'Register',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 25,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () {
        if(!isLoading){
          checkRegisterAs(context, orgCode);
        }
      },
    );
  }
}
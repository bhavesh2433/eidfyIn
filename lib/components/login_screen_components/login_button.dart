import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  final Function submit;

  LoginButton(this.submit);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.07,
        child: Center(
          child: Text(
            'Log In',
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
        submit();
      },
    );
  }
}
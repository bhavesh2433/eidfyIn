import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: const Color(0xff4fc7f3),
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

      },
    );
  }
}
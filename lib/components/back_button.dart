import 'package:flutter/material.dart';

class BackwardButton extends StatelessWidget {
  const BackwardButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          width: 52.0,
          height: 52.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          )),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }
}
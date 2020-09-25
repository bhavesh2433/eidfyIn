import 'package:flutter/cupertino.dart';

class Role {
  final int id;
  final String text;

  Role(this.id, this.text);
}

class UserInfo {
  final String name;
  final String username;
  final String admissionNo;
  final Role roleNo;
  final Role className;
  final String section;
  final String theme;

  UserInfo(
      {this.name,
      this.username,
      this.admissionNo,
      this.className,
      this.roleNo,
      this.section,
      this.theme});
}

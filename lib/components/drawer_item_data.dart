import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../providers/display_data.dart';
import '../widgets/drawer_item_list_expanded.dart';

import '../models/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemData extends StatefulWidget {
  final DisplayData orgData;
  final int i;

  DrawerItemData(this.orgData, this.i);

  @override
  _DrawerItemDataState createState() => _DrawerItemDataState();
}

class _DrawerItemDataState extends State<DrawerItemData> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    final data = widget.orgData.displayData.where((org) => org.iv == true);
    void _tapped() {
      setState(() {
        _expanded = !_expanded;
      });
    }

    var cnName = widget.orgData.displayData
        .where((org) => org.iv == true)
        .where((visibleItem) => visibleItem.ct == 'Plugin')
        .toList()[widget.i]
        .cn;
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 5,top: 5),
          padding: EdgeInsets.only(left: 10, top: 10),
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(
            color: Colors.white
          ),
            child: Text(
              widget.orgData.displayData
                  .where((org) => org.iv == true)
                  .where((visibleItem) => visibleItem.ct == 'Plugin')
                  .where((element) => element.p.displayText != null)
                  .toList()[widget.i]
                  .p
                  .displayText,
            )
        ),
        Divider(color: Colors.black54),
      ],
    );
  }
}

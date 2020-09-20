import 'dart:math';

import 'package:flutter/cupertino.dart';
import '../screens/list_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../providers/display_data.dart';
import '../widgets/drawer_item_list_expanded.dart';

import '../models/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemData extends StatefulWidget {
  final DrawerDisplayData orgData;
  final int i;
  final String selected;

  DrawerItemData(this.orgData, this.i, this.selected);

  @override
  _DrawerItemDataState createState() => _DrawerItemDataState();
}

class _DrawerItemDataState extends State<DrawerItemData> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    var org = widget.orgData.displayData.where((org) => org.iv == true);

    final defaultData = [
      'Learning Management',
      'Communication',
      'Attendance'
    ];
    final data = (widget.selected == 'Learning Management' ||
            widget.selected == 'Communication' ||
            widget.selected == 'Attendance')
        ? org
            .where((selected) => selected.ct == 'Plugin')
            .where((desired) => desired.p.displayText == widget.selected)
            .toList()
        : widget.orgData.displayData.where((org) => org.iv == true);

    final mediaQuery = MediaQuery.of(context).size;

    var cnName = (widget.selected == 'Learning Management' ||
        widget.selected == 'Communication' ||
        widget.selected == 'Attendance')
        ? org
        .where((visibleItem) => visibleItem.ct == 'Plugin')
        .where((desired) => desired.p.displayText == widget.selected)
        .toList()
        .first
        .cn :
    widget.orgData.displayData.where((org) => org.iv == true);

    var manager = org
        .where((visibleItem) => visibleItem.ct == 'Manager')
        .where((desired) => desired.pcn == cnName)
        .toList();

    var cnManager = manager.first.cn;

    var listItems = org
        .where((visibleItem) => visibleItem.ct == 'List')
        .where((desired) => desired.pcn == cnManager)
        .toList();

    print(cnName);
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 5, top: 5),
            padding: EdgeInsets.only(left: 10, top: 10),
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(color: Colors.white),
            child: (widget.selected == 'Learning Management' ||
                    widget.selected == 'Communication' ||
                    widget.selected == 'Attendance')
                ? Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: mediaQuery.height * 0.05,
                            width: mediaQuery.width * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: Stack(
                                    children: <Widget>[
                                      SvgPicture.string(
                                        '<svg viewBox="159.1 308.8 63.1 63.1" ><path transform="translate(156.14, 305.83)" d="M 66.09250640869141 31.65427780151367 L 66.09250640869141 34.55652618408203 C 66.08451843261719 48.52734756469727 56.88824844360352 60.82888412475586 43.49076080322266 64.79009246826172 C 30.09327697753906 68.75131225585938 15.68606472015381 63.4286003112793 8.082047462463379 51.70840835571289 C 0.4780302047729492 39.98821640014648 1.488600730895996 24.66249465942383 10.56573677062988 14.04225254058838 C 19.64287567138672 3.422013759613037 34.62425994873047 0.03716397285461426 47.3856086730957 5.723288536071777" fill="none" stroke="#33b2e0" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: mediaQuery.width * 0.03,
                                            top: mediaQuery.height * 0.0005),
                                        child: SvgPicture.string(
                                          '<svg viewBox="181.2 315.2 41.0 31.6" ><path transform="translate(167.72, 309.15)" d="M 54.51007080078125 6 L 22.96386337280273 37.57775115966797 L 13.50000095367432 28.11388969421387" fill="none" stroke="#0089c4" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(data.first.p.displayText),
                          )
                        ],
                      ),
                      Divider(color: Colors.black54),
                      Text(manager.first.p.displayText),
                      Divider(
                        color: Colors.black54,
                      ),
                      SingleChildScrollView(
                        child: Container(
                          height: mediaQuery.height * 0.1,
                          child: ListView.builder(
                              itemCount: listItems.length,
                              itemBuilder: (ctx, index) {
                                return GestureDetector(
                                  child: Container(
                                    height: mediaQuery.height * 0.03,
                                    child: Center(
                                      child: Text(
                                        listItems[index].p.displayText,
                                        style: TextStyle(
                                          fontFamily: 'Calibri',
                                          fontSize: 16,
                                          color: const Color(0xff707070),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        ListScreen.routeName,
                                        arguments: {
                                          'title': manager.first.p.displayText,
                                          'cn': listItems[index].cn
                                        });
                                  },
                                );
                              }),
                        ),
                      )
                    ],
                  )
                : Text(
                    defaultData[widget.i],
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 20,
                      color: const Color(0xff707070),
                    ),
                    textAlign: TextAlign.left,
                  )),
        Divider(color: Colors.black54),
      ],
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../providers/display_data.dart';
import '../components/drawer_item_data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({
    @required this.mediaQuery,
    @required this.accessToken,
  });

  final Size mediaQuery;
  final String accessToken;
  var selectedItem = 'Learning Management';

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.mediaQuery.width * 0.8,
      child: Drawer(
        child: Scaffold(
          body: FutureBuilder(
              future: Provider.of<DrawerDisplayData>(context)
                  .fetchDrawerData(widget.accessToken),
              builder: (ctx, dataSnapshot) {
                if (dataSnapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  if (dataSnapshot.error != null) {
                    // Do error handling stuff
                    return Center(
                      child: Text('An error occurred!'),
                    );
                  } else {
                    return Container(
                        child: Row(children: <Widget>[
                      Container(
                        width: widget.mediaQuery.width * 0.13,
                        height: widget.mediaQuery.height,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Container(
                          height: widget.mediaQuery.height * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SizedBox(
                                    height: widget.mediaQuery.height * 0.03,
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.menu),
                                      color: widget.selectedItem == 'menu'
                                          ? const Color(0xff4fc7f3)
                                          : const Color(0xffb3b1b1),
                                      onPressed: () {
                                        widget.selectedItem = 'menu';
                                      }),
                                  SizedBox(
                                    height: widget.mediaQuery.height * 0.1,
                                  ),
                                  // InkWell(
                                  //   child: Container(
                                  //     child: Column(
                                  //       children: <Widget>[
                                  //         SvgPicture.string(
                                  //           '<svg viewBox="21.0 120.0 28.0 14.0" ><path transform="translate(21.0, 120.0)" d="M 13.99999904632568 0 L 28 14 L 0 14 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                  //           allowDrawingOutsideViewBox: true,
                                  //           fit: BoxFit.fill,
                                  //         ),
                                  //         Container(
                                  //           height: mediaQuery.height * 0.015,
                                  //           width: mediaQuery.width * 0.05,
                                  //           decoration: BoxDecoration(
                                  //             color: const Color(0xffb3b1b1),
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  //   onTap: () {},
                                  // ),
                                  IconButton(
                                      icon: Icon(Icons.home),
                                      color: widget.selectedItem == 'home'
                                          ? const Color(0xff4fc7f3)
                                          : const Color(0xffb3b1b1),
                                      onPressed: () {
                                        setState(() {
                                          Navigator.of(context)
                                              .pushReplacementNamed(
                                                  HomeScreen.routeName);
                                          widget.selectedItem = 'home';
                                        });
                                      }),
                                  SizedBox(
                                    height: widget.mediaQuery.height * 0.1,
                                  ),
                                  // InkWell(
                                  //   child: Container(
                                  //     child: Column(
                                  //       children: <Widget>[
                                  //         SvgPicture.string(
                                  //           '<svg viewBox="62.4 374.5 10.1 10.1" ><path transform="translate(51.19, 374.5)" d="M 21.374755859375 5.062377452850342 C 21.374755859375 2.26646876335144 19.10828590393066 0 16.3123779296875 0 C 13.51646900177002 0 11.25 2.26646876335144 11.25 5.062377452850342 C 11.25 7.85828685760498 13.51646900177002 10.12475490570068 16.3123779296875 10.12475490570068 C 19.10828590393066 10.12475490570068 21.374755859375 7.85828685760498 21.374755859375 5.062377452850342 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                  //           allowDrawingOutsideViewBox: true,
                                  //           fit: BoxFit.fill,
                                  //         ),
                                  //         SvgPicture.string(
                                  //           '<svg viewBox="54.0 384.6 27.0 16.9" ><path transform="translate(54.0, 371.12)" d="M 12.31792640686035 16.0892276763916 C 9.189270973205566 14.1739616394043 4.121619701385498 13.64768409729004 1.571446895599365 13.5026683807373 C 0.7145335078239441 13.45415496826172 0 14.10699081420898 0 14.93120956420898 L 0 26.68014526367188 C 0 27.43581008911133 0.6111766695976257 28.06596946716309 1.396899938583374 28.10657501220703 C 3.699226856231689 28.22733306884766 8.357142448425293 28.66976547241211 11.57649803161621 30.29130935668945 C 12.07060813903809 30.54021072387695 12.65647220611572 30.20113563537598 12.65647220611572 29.66536521911621 L 12.65647220611572 16.69355010986328 C 12.65594482421875 16.44728469848633 12.53413200378418 16.22158813476563 12.31792640686035 16.0892276763916 Z M 25.42790031433105 13.5026683807373 C 22.87825584411621 13.64715766906738 17.8100757598877 14.1739616394043 14.6819486618042 16.0892276763916 C 14.46574401855469 16.22158813476563 14.3439302444458 16.45624923706055 14.3439302444458 16.70251274108887 L 14.3439302444458 29.66378021240234 C 14.3439302444458 30.20113182067871 14.93137645721436 30.54073333740234 15.42706871032715 30.29130554199219 C 18.64589881896973 28.67134475708008 23.30117797851563 28.22891426086426 25.60297393798828 28.108154296875 C 26.38869857788086 28.06702423095703 26.99987411499023 27.43686294555664 26.99987411499023 26.68119812011719 L 26.99987411499023 14.93120956420898 C 26.99934768676758 14.10699081420898 26.28481292724609 13.45415496826172 25.42790031433105 13.5026683807373 Z" fill="#b3b1b1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                  //           allowDrawingOutsideViewBox: true,
                                  //           fit: BoxFit.fill,
                                  //         )
                                  //       ],
                                  //     ),
                                  //   ),
                                  //   onTap: () {},
                                  // ),
                                  IconButton(
                                      icon: Icon(Icons.book),
                                      color: widget.selectedItem ==
                                              'Learning Management'
                                          ? const Color(0xff4fc7f3)
                                          : const Color(0xffb3b1b1),
                                      onPressed: () {
                                        setState(() {
                                          widget.selectedItem =
                                              'Learning Management';
                                        });
                                      }),
                                  SizedBox(
                                    height: widget.mediaQuery.height * 0.1,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.speaker_phone,
                                      color:
                                          widget.selectedItem == 'Communication'
                                              ? const Color(0xff4fc7f3)
                                              : const Color(0xffb3b1b1),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        widget.selectedItem = 'Communication';
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: widget.mediaQuery.height * 0.1,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.mail_outline,
                                      color: widget.selectedItem == 'Attendance'
                                          ? const Color(0xff4fc7f3)
                                          : const Color(0xffb3b1b1),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        widget.selectedItem = 'Attendance';
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: widget.mediaQuery.height,
                        child: Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15, top: 20),
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 75.0,
                                      height: 75.0,
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
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Name',
                                            style: TextStyle(
                                              fontFamily: 'Calibri',
                                              fontSize: 18,
                                              color: const Color(0xff707070),
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(
                                            height:
                                                widget.mediaQuery.height * 0.01,
                                          ),
                                          Text(
                                            'University',
                                            style: TextStyle(
                                              fontFamily: 'Calibri',
                                              fontSize: 18,
                                              color: const Color(0xff707070),
                                            ),
                                            textAlign: TextAlign.left,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                      child: Text(
                                    ' Student ID 61622',
                                    style: TextStyle(
                                      fontFamily: 'Calibri',
                                      fontSize: 20,
                                      color: const Color(0xff707070),
                                    ),
                                    textAlign: TextAlign.left,
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Consumer<DrawerDisplayData>(
                                builder: (ctx, orgData, child) {
                              return SingleChildScrollView(
                                child: Container(
                                  // height: widget.mediaQuery.height * 0.00002,
                                  width: widget.mediaQuery.width * 0.6,
                                  child: Column(
                                    children: <Widget>[
                                      SingleChildScrollView(
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: (widget.selectedItem ==
                                                        'Learning Management' ||
                                                    widget.selectedItem ==
                                                        'Communication' ||
                                                    widget.selectedItem ==
                                                        'Attendance')
                                                ? 1
                                                : orgData.displayData
                                                    .where(
                                                        (org) => org.iv == true)
                                                    .where((visibleItem) =>
                                                        visibleItem.ct ==
                                                        'Plugin')
                                                    .length,
                                            itemBuilder: (ctx, i) =>
                                                DrawerItemData(orgData, i,
                                                    widget.selectedItem)),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ]),
                      ),
                    ]));
                  }
                }
              }),
        ),
      ),
    );
  }
}

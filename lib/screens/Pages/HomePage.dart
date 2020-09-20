import 'package:edifyin/providers/auth.dart';
import 'package:edifyin/providers/display_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final accessToken = Provider.of<Auth>(context).token;

    Provider.of<DisplayData>(context).fetchSchemaData(accessToken);
    return Container(
      padding: EdgeInsets.only(top: mediaQuery.height * 0.25),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: mediaQuery.height * 0.15,
              width: mediaQuery.width * 0.3,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
                              left: mediaQuery.width * 0.06,
                              top: mediaQuery.height * 0.005),
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
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Hii ---- ------',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 30,
                  color: const Color(0xff66778e),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'You have no pending \ntask for today',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

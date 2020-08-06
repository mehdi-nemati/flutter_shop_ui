import 'package:flutter/material.dart';

Drawer buildDrawerLayout(BuildContext context) {
  return new Drawer(
    child: new ListView(
      children: <Widget>[
        new DrawerHeader(
            padding: EdgeInsets.zero,
            child: new Container(
              child: new Stack(
                children: <Widget>[
                  new FlutterLogo(),
                  new Container(
                    width: 10000,
                    color: Color(0xff5bd75b),
                  ),
                  new Align(
                    alignment: Alignment.bottomRight,
                    child: new Padding(
                        padding: const EdgeInsets.only(right: 22, bottom: 37),
                        child: new Text('مهدی نعمتی',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white))),
                  ),
                  new Align(
                    alignment: Alignment.bottomRight,
                    child: new Padding(
                        padding: const EdgeInsets.only(right: 22, bottom: 16),
                        child: new Text('09123456789',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.white))),
                  ),
                  new Align(
                    alignment: Alignment.bottomRight,
                    child: new Padding(
                      padding: const EdgeInsets.only(right: 25, bottom: 66),
                      child: new Container(
                        alignment: Alignment.topRight,
                        child: new FlutterLogo(),
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        new ListTile(
          leading: new Icon(
            Icons.home,
            color: Color(0xff727272),
          ),
          title: new Text('خانه'),
          onTap: () {},
        ),
        new ListTile(
            leading: new Icon(Icons.people, color: Color(0xff727272)),
            title: new Text(' خرید ها'),
            onTap: () {}),
        new ListTile(
          leading: new Icon(Icons.help_outline, color: Color(0xff727272)),
          title: new Text('راهنمای کامل'),
          onTap: () {},
        ),
        new ListTile(
          leading: new Icon(Icons.exit_to_app, color: Color(0xff727272)),
          title: new Text('خروج '),
          onTap: () {},
        ),
      ],
    ),
  );
}

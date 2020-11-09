import 'package:flutter/cupertino.dart';
import '../Widgets/bezierContainer.dart';

import 'package:flutter/material.dart';
import './object_detection/objectDetectionPage.dart';
import './googleColors.dart';
import './text_recognition/textRecog.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            height: height,
            child: Stack(children: <Widget>[
              Positioned(
                top: -MediaQuery.of(context).size.height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: BezierContainer(),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.only(top: 150.0),
                  child: SingleChildScrollView(
                      child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 8.0,
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        children: <Widget>[
                          _GirdCell(
                            icon: Icon(
                              Icons.camera,
                              size: 50.0,
                              color: googleColor.redColor,
                            ),
                            title: 'Pick Image',
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ObjectDetectionPage())),
                          ),
                          _GirdCell(
                            icon: Icon(
                              Icons.textsms,
                              size: 50.0,
                              color: googleColor.redColor,
                            ),
                            title: 'Pick Text',
                            onTap: () =>Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TextRecogPage())),
                          ),
                          _GirdCell(
                            icon: Icon(
                              Icons.favorite,
                              size: 50.0,
                              color: googleColor.redColor,
                            ),
                            title: 'Favorites',
                            onTap: null,
                          ),
                          _GirdCell(
                            icon: Icon(
                              Icons.location_on,
                              size: 50.0,
                              color: googleColor.redColor,
                            ),
                            title: 'where I am',
                            onTap: null,
                          ),
                          /* _GirdCell(icon: 'images/c3po.png', title: 'MyRated', onTap: null),
            _GirdCell(
              icon: 'images/r2d2.png',
              title: 'Settings',
              onTap: null,
            ),*/
                        ],
                      ),
                    ),
                  ))),
            ])));
    /*Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisSpacing: 8.0,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: <Widget>[
            _GirdCell(
              icon: Icon(
                Icons.camera,
                size: 50.0,
                color: googleColor.redColor,
              ),
              title: 'Pick Image',
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ObjectDetectionPage())),
            ),
            _GirdCell(
              icon: Icon(
                Icons.textsms,
                size: 50.0,
                color: googleColor.redColor,
              ),
              title: 'Pick Text',
              onTap: null,
            ),
            _GirdCell(
              icon: Icon(
                Icons.favorite,
                size: 50.0,
                color: googleColor.redColor,
              ),
              title: 'Favorites',
              onTap: null,
            ),
            _GirdCell(
              icon: Icon(
                Icons.location_on,
                size: 50.0,
                color: googleColor.redColor,
              ),
              title: 'where I am',
              onTap: null,
            ),
            /* _GirdCell(icon: 'images/c3po.png', title: 'MyRated', onTap: null),
            _GirdCell(
              icon: 'images/r2d2.png',
              title: 'Settings',
              onTap: null,
            ),*/
          ],
        ),
      ),
    ));*/
  }
}

class _GirdCell extends StatelessWidget {
  final Function onTap;
  final Widget icon;
  final String title;

  const _GirdCell({this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    final _lightTheme = ThemeData.light()
        .copyWith(cardColor: Colors.white, canvasColor: Colors.grey[300]);
    final _darkTheme = ThemeData.dark()
        .copyWith(cardColor: Color(0xFF505050), canvasColor: Color(0xFF404040));
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final ThemeData _theme = _mediaQuery.platformBrightness == Brightness.light
        ? _lightTheme
        : _darkTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: _theme.cardColor,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 10.0,
                color: _theme.canvasColor,
                offset: Offset(0, 15.0))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: icon,
              width: 80.0,
              height: 80.0,
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}

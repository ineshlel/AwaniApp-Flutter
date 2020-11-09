import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './googleColors.dart';
import './flightSearch/home_page.dart';
import './travel/screens/main_screen.dart';
import './profil.dart';

class CurvedNavBarPage extends StatefulWidget {
  @override
  _CurvedNavBarPageState createState() =>
      _CurvedNavBarPageState();
}

class _CurvedNavBarPageState extends State<CurvedNavBarPage> {
  int _selectedPage = 0;
  final _optionPage = [MainScreen(), HomePage(), ProfilPage()];
    AnimationController animationController;
  Animation<double> scaleAnimation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _optionPage[_selectedPage],
      bottomNavigationBar: CurvedNavigationBar(
        color: googleColor.redColor,
        backgroundColor: Colors.white,
        buttonBackgroundColor: googleColor.redColor,
        animationDuration: Duration(milliseconds: 300),
        //animation mta3 5arjet el icon
        animationCurve: Curves.bounceInOut,
        //height: 70.0,
        //à l'ouvertre de page, chniya el icon li tkoun selectionée => icon d'indice 1
        index: _selectedPage,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20.0,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 20.0,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 20.0,
            color: Colors.white,
          ),
        ],
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
      ),
    );
  }
}
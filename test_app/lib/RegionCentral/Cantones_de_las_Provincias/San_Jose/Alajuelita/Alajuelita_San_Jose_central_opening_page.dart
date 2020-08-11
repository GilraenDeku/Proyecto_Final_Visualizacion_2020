///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class regionSocialEconomicaCentralAlajuelitaSanJose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Alajuelita',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Alajuelita', style: TextStyle(fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Concepción', style: TextStyle(fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Antonio', style: TextStyle(fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Felipe', style: TextStyle(fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Josecito', style: TextStyle(fontSize: 25),
            ),
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Storytelling del Cantón', style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );

  }
}
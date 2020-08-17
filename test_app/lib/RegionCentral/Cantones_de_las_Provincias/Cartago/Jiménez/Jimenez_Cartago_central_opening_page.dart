///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Jim%C3%A9nez/Jimenez_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Jim%C3%A9nez/Juan_Vi%C3%B1as/Juan_Vi%C3%B1as_Jimenez_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Jim%C3%A9nez/Pejibaye/Pejibaye_Jimenez_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Jim%C3%A9nez/Tucurrique/Tucurrique_Jimenez_Cartago_StoryTelling.dart';

class regionSocialEconomicaCentralJimenezCartago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Jiménez',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Juan Viñas', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingJuanVinasJimenezCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Pejibaye', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingPejibayeJimenezCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tucurrique', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTucurriqueJimenezCartago.withSampleData()),
              )
            },
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Storytelling del Cantón', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingJimenezCartago.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
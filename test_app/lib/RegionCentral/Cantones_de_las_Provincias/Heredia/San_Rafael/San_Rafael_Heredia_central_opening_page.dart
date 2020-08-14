///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Rafael/Concepci%C3%B3n/Concepcion_San_Rafael_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Rafael/Los_Angeles/Los_Angeles_San_Rafael_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Rafael/San_Josecito/San_Josecito_San_Rafael_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Rafael/San_Rafael/San_Rafael_San_Rafael_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Rafael/Santiago/Santiago_San_Rafael_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Rafael/storytellingSanRafaelHeredia.dart';

class regionSocialEconomicaCentralSanRafaelHeredia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de San Rafael',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Concepción', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingConcepcionSanRafaelHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Los Ángeles', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLosAngelesSanRafaelHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Josecito', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanJosecitoSanRafaelHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Rafael', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanRafaelSanRafaelHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santiago', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSantiagoSanRafaelHeredia.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanRafaelHeredia.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Heredia/San_Francisco/San_Francisco_Heredia_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Isidro/Concepci%C3%B3n/Concepcion_San_Isidro_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Isidro/San_Isidro/San_Isidro_San_Isidro_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Isidro/San_Jos%C3%A9/San_Jose_San_Isidro_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/San_Isidro/storytellingSanIsidroHeredia.dart';

class regionSocialEconomicaCentralSanIsidroHeredia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de San Isidro',
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
                MaterialPageRoute(builder: (context) => storytellingConcepcionSanIsidroHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Francisco', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanFranciscoHerediaHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Isidro', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanIsidroSanIsidroHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San José', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanJoseSanIsidroHeredia.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanIsidroHeredia.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
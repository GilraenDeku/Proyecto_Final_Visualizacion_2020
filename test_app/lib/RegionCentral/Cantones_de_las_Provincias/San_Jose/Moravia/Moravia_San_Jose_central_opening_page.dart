///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Moravia/La_Trinidad/La_Trinidad_Moravia_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Moravia/Moravia_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Moravia/San_Jer%C3%B3nimo/San_Jer%C3%B3nimo_Moravia_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Moravia/San_Vicente/San_Vicente_Moravia_San_Jose_StoryTelling.dart';

class regionSocialEconomicaCentralMoraviaSanJose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Moravia',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('La Trinidad', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLaTrinidadMoraviaSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Jerónimo', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanJeronimoMoraviaSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Vicente', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanVicenteMoraviaSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingMoraviaSanJose.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
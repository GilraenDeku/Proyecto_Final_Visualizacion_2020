///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Atenas/Atenas/Atenas_Atenas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Atenas/Concepci%C3%B3n/Concepcion_Atenas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Atenas/Escobal/Escobal_Atenas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Atenas/Jes%C3%BAs/Jesus_Atenas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Atenas/Mercedes/Mercedes_Atenas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Atenas/San_Isidro/San_Isidro_Atenas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Atenas/San_Jos%C3%A9/San_Jose_Atenas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Atenas/Santa_Eulalia/Santa_Eulalia_Atenas_Alajuela_StoryTelling.dart';
import 'Atenas_Alajuela_Storytelling.dart';

class regionSocialEconomicaCentralAtenasAlajuela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Atenas',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Atenas', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingAtenasAtenasAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Concepción', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingConcepcionAtenasAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Escobal', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingEscobalAtenasAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Jesús', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingJesusAtenasAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Mercedes', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingMercedesAtenasAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanIsidroAtenasAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanJoseAtenasAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santa Eulalia', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSantaEulaliaAtenasAlajuela.withSampleData()),
              )
            },
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('StoryTelling del Cantón', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>storytellingAtenasAlajuela.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
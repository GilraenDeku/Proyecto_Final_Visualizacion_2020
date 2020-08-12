///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/Alfaro/Alfaro_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/Angeles/Angeles_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/Concepci%C3%B3n/Concepcion_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/Piedades_Norte/Piedades_Norte_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/Piedades_Sur/Piedades_Sur_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/San_Isidro/San_Isidro_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/San_Juan/San_Juan_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/San_Rafael/San_Rafael_San_Ramon_Alajuela_central_grafico.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/San_Ram%C3%B3n/San_Ramon_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/Santiago/Santiago_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/Volio/Volio_San_Ramon_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/San_Ram%C3%B3n/Zapotal/Zapotal_San_Ramon_Alajuela_StoryTelling.dart';
import 'San_Ramon_Alajuela_Storytelling.dart';

class regionSocialEconomicaCentralSanRamonAlajuela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de San Ramón',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Alfaro', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingAlfaroSanRamonAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Ángeles', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingAngelesSanRamonAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingConcepcionSanRamonAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Piedades Norte', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingPiedadesNorteSanRamonAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Piedades Sur', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingPiedadesSurSanRamonAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanIsidroSanRamonAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Juan', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanJuanSanRamonAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanRafaelSanRamonAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Ramón', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanRamonSanRamonAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSantiagoSanRamonAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Volio', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingVolioSanRamonAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Zapotal', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingZapotalSanRamonAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanRamonAlajuela.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
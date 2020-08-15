///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Aserr%C3%AD/Aserr%C3%AD/Aserri_Aserri_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Aserr%C3%AD/Aserri_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Aserr%C3%AD/Legua/Legua_Aserri_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Aserr%C3%AD/Monterrey/Monterrey_Aserri_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Aserr%C3%AD/Salitrillos/Salitrillos_Aserri_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Aserr%C3%AD/San_Gabriel/San_Gabriel_Aserri_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Aserr%C3%AD/Tarbaca/Tarbaca_Aserri_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Aserr%C3%AD/Vuelta_de_Jorco/Vuelta_de_Jorco_Aserri_San_Jose_StoryTelling.dart';

class regionSocialEconomicaCentralAserriSanJose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Aserrí',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Aserrí', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingAserriAserriSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Legua', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLeguaAserriSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Monterrey', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingMonterreyAserriSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Salitrillos', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSalitrillosAserriSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Gabriel', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanGabrielAserriSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tarbaca', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTarbacaAserriSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Vuelta de Jorco', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingVueltadeJorcoAserriSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingAserriSanJose.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
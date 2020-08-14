///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Heredia/Heredia/Heredia_Heredia_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Heredia/Mercedes/Mercedes_Heredia_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Heredia/San_Francisco/San_Francisco_Heredia_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Heredia/Ulloa/Ulloa_Heredia_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Heredia/Vara_Blanca/Vara_Blanca_Heredia_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Heredia/storytellingHerediaHeredia.dart';

class regionSocialEconomicaCentralHerediaHeredia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Heredia',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Heredia', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingHerediaHerediaHeredia.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingMercedesHerediaHeredia.withSampleData()),
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
            title: Text('Ulloa', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingUlloaHerediaHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Vara Blanca', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingVaraBlancaHerediaHeredia.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingHerediaHeredia.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
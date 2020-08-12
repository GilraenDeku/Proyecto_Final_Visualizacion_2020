///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Zarcero/Brisas/Brisas_Zarcero_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Zarcero/Guadalupe/Guadalupe_Zarcero_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Zarcero/Laguna/Laguna_Zarcero_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Zarcero/Palmira/Palmira_Zarcero_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Zarcero/Tapesco/Tapezco_Zarcero_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Zarcero/Zapote/Zapote_Zarcero_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Zarcero/Zarcero/Zarcero_Zarcero_Alajuela_StoryTelling.dart';
import 'Zarcero_Alajuela_StoryTelling.dart';

class regionSocialEconomicaCentralZarceroAlajuela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Zarcero',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Brisas', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingBrisasZarceroAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Guadalupe', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingGuadalupeZarceroAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Laguna', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLagunaZarceroAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Palmira', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingPalmiraZarceroAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tapesco', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTapescoZarceroAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Zapote', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingZapoteZarceroAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Zarcero', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingZarceroZarceroAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingZarceroAlajuela.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
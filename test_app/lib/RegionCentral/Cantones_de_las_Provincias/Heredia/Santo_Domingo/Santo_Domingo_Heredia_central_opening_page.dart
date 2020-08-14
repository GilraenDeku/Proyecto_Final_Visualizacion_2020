///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Santo_Domingo/Par%C3%A1-San_Luis/Para-San_Luis_Santo_Domingo_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Santo_Domingo/Paracito/Paracito_Santo_Domingo_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Santo_Domingo/San_Miguel/San_Miguel_Santo_Domingo_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Santo_Domingo/San_Vicente/San_Vicente_Santo_Domingo_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Santo_Domingo/Santa_Rosa/Santa_Rosa_Santo_Domingo_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Santo_Domingo/Santo_Domingo/Santo_Domingo_Santo_Domingo_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Santo_Domingo/Santo_Domingo_Heredia_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Santo_Domingo/Santo_Tom%C3%A1s/Santo_Tomas_Santo_Domingo_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Santo_Domingo/Tures-Angeles/Tunes_Angeles_Santo_Domingo_Heredia_Storytelling.dart';

class regionSocialEconomicaCentralSantoDomingoHeredia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Santo Domingo',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Paracito', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingParacitoSantoDomingoHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Pará-San Luis', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingParaSanLuisSantoDomingoHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Miguel', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanMiguelSantoDomingoHeredia.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanVicenteSantoDomingoHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santa Rosa', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSantaRosaSantoDomingoHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santo Domingo', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSantoDomingoSantoDomingoHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santo Tomás', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSantoTomasSantoDomingoHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tures-Ángeles', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTuresAngelesSantoDomingoHeredia.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSantoDomingoHeredia.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
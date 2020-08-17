///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Barva/Barva_Heredia_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Bel%C3%A9n/La_Asunci%C3%B3n/La_Asuncion_Belen_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Bel%C3%A9n/La_Ribera/La_Ribera_Belen_Heredia_Storytelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Heredia/Bel%C3%A9n/San_Antonio/San_Antonio_Belen_Heredia_Storytelling.dart';

class regionSocialEconomicaCentralBelenHeredia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Belén',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('La Asunción', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLaAsuncionBelenHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('La Ribera', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLaRiberaBelenHeredia.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Antonio', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanAntonioBelenHeredia.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingBarvaHeredia.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
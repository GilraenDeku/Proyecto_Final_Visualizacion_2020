///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Po%C3%A1s/Carrillos/Carrillos_Poas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Po%C3%A1s/Sabana_Redonda/Sabana_Redonda_Poas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Po%C3%A1s/San_Juan/San_Juan_Poas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Po%C3%A1s/San_Pedro/San_Pedro_Poas_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Po%C3%A1s/San_Rafael/San_Rafael_Poas_Alajuela_StoryTelling.dart';
import 'Poas_Alajuela_Storytelling.dart';

class regionSocialEconomicaCentralPoasAlajuela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Poás',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Carrillos', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingCarrillosPoasAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Sabana Redonda', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSabanaRedondaPoasAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanJuanPoasAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Pedro', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanPedroPoasAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanRafaelPoasAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingPoasAlajuela.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
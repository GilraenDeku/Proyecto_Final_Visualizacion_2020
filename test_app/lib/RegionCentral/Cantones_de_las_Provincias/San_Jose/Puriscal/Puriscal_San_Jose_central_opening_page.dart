///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/Barbacoas/Barbacoas_Puriscal_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/Candelarita/Candelarita_Puriscal_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/Chires/Chires_Puriscal_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/Desamparaditos/Desamparaditos_Puriscal_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/Grifo_Alto/Grifo_Alto_Puriscal_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/Mercedes_Sur/Mercedes_Sur_Puriscal_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/Puriscal_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/San_Antonio/San_Antonio_Puriscal_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/San_Rafael/San_Rafael_Puriscal_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/Santiago/Santiago_Puriscal_San_Jose_StoryTelling.dart';

class regionSocialEconomicaCentralPuriscalSanJose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Puriscal',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Barbacoas', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingBarbacoasPuriscalSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Candelarita', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingCandelaritaPuriscalSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Chires', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingChiresPuriscalSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Desamparaditos', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingDesamparaditosPuriscalSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Grifo Alto', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingGrifoAltoPuriscalSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Mercedes Sur', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingMercedesSurPuriscalSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanAntonioPuriscalSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanRafaelPuriscalSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSantiagoPuriscalSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingPuriscalSanJose.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
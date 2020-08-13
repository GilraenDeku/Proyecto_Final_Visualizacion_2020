///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Paraiso/Cach%C3%AD/Cachi_Paraiso_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Paraiso/Llanos_de_Santa_Luc%C3%ADa/Llanos_de_Santa_Luc%C3%ADa_Paraiso_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Paraiso/Orosi/Orosi_Paraiso_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Paraiso/Paraiso/Paraiso_Paraiso_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Paraiso/Paraiso_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Paraiso/Santiago/Santiago_Paraiso_Cartago_StoryTelling.dart';

class regionSocialEconomicaCentralParaisoCartago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Paraiso',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Cachí', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingCachiParaisoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Llanos de Santa Lucía', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLlanosdeSantaLuciaParaisoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Orosi', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingOrosiParaisoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Paraiso', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingParaisoParaisoCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSantiagoParaisoCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingParaisoCartago.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
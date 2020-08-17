///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Agua_Caliente/Agua_Caliente_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Carmen/Carmen_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Corralillo/Corralillo_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Dulce_Nombre/Dulce_Nombre_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Guadalupe/Guadalupe_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Llano_Grande/Llano_Grande_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Occidental/Occidental_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Oriental/Oriental_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Quebradilla/Quebradilla_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/San_Nicol%C3%A1s/San_Nicolas_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Tierra_Blanca/Tierra_Blanca_Cartago_Cartago_StoryTelling.dart';

class regionSocialEconomicaCentralCartagoCartago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Cartago',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Agua Caliente', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingAguaCalienteCartagoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Carmen', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingCarmenCartagoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Corralillo', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingCorralilloCartagoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Dulce Nombre', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingDulceNombreCartagoCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingGuadalupeCartagoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Llano Grande', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLlanoGrandeCartagoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Occidental', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingOccidentalCartagoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Oriental', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingOrientalCartagoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Quebradilla', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingQuebradillaCartagoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Nicolás', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanNicolasCartagoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tierra Blanca', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTierraBlancaCartagoCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingCartagoCartago.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
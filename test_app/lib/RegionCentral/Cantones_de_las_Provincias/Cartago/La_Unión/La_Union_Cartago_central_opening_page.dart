///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/Cartago/Dulce_Nombre/Dulce_Nombre_Cartago_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/La_Uni%C3%B3n/Concepci%C3%B3n/Concepcion_La_Union_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/La_Uni%C3%B3n/Dulce_Nombre/Dulce_Nombre_La_Union_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/La_Uni%C3%B3n/La_Union_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/La_Uni%C3%B3n/R%C3%ADo_Azul/Rio_Azul_La_Union_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/La_Uni%C3%B3n/San_Diego/San_Diego_La_Union_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/La_Uni%C3%B3n/San_Juan/San_Juan_La_Union_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/La_Uni%C3%B3n/San_Rafael/San_Rafael_La_Union_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/La_Uni%C3%B3n/San_Ram%C3%B3n/San_Ramon_La_Union_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/La_Uni%C3%B3n/Tres_R%C3%ADos/Tres_Rios_La_Union_Cartago_StoryTelling.dart';

class regionSocialEconomicaCentralLaUnionCartago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de La Unión',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Concepción', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingConcepcionLaUnionCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingDulceNombreLaUnionCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Río Azul', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingRioAzulLaUnionCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Diego', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanDiegoLaUnionCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanJuanLaUnionCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanRafaelLaUnionCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanRamonLaUnionCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tres Ríos', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTresRiosLaUnionCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingLaUnionCartago.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
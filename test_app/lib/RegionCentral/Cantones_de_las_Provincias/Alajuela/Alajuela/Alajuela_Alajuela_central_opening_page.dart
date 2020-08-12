///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/Desamparados/Desamparados_Alajuela_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/La_Garita/La_Garita_Alajuela_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/La_Gu%C3%A1cima/La_Guacima_Alajuela_Alajuela_storyTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/R%C3%ADo_Segundo/Rio_Segundo_Alajuela_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/Sabanilla/Sabanilla_Alajuela_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/San_Antonio/San_Antonio_Alajuela_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/San_Isidro/San_Isidro_Alajuela_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/San_Jos%C3%A9/San_Jose_Alajuela_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/San_Rafael/San_Rafael_Alajuela_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/Tambor/Tambor_Alajuela_Alajuela_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Alajuela/Alajuela/Turrucares/Turrucares_Alajuela_Alajuela_StoryTelling.dart';
import 'Alajuela_Alajuela_Storytelling.dart';
import 'Alajuela/Alajuela_Alajuela_Alajuela_Storytelling.dart';
import 'Carrizal/Carrizal_Alajuela_Alajuela_StoryTelling.dart';


class regionSocialEconomicaCentralAlajuelaAlajuela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Alajuela',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Alajuela', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingAlajuelaAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Carrizal', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingCarrizalAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Desamparados', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingDesamparadosAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('La Garita', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLaGaritaAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('La Guácima', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingLaGuacimaAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Río Segundo', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingRioSegundoAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Sabanilla', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSabanillaAlajuelaAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanAntonioAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Isidro', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanIsidroAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San José', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanJoseAlajuelaAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanRafaelAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tambor', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTamborAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Turrúcares', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTurrucaresAlajuelaAlajuela.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingAlajuelaAlajuela.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
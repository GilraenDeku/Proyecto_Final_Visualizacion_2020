///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/V%C3%A1squez_de_Coronado/Cascajal/Cascajal_Vasquez_de_Colorado_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/V%C3%A1squez_de_Coronado/Dulce_Nombre_de_Jes%C3%BAs/Dulce_Nombre_de_Jesus_Vasquez_de_Colorado_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/V%C3%A1squez_de_Coronado/Patalillo/Patalillo_Vasquez_de_Colorado_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/V%C3%A1squez_de_Coronado/San_Isidro/San_Isidro_Vasquez_de_Colorado_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/V%C3%A1squez_de_Coronado/San_Rafael/San_Rafael_Vasquez_de_Colorado_San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/V%C3%A1squez_de_Coronado/Vasquez_de_Coronado_San_Jose_StoryTelling.dart';

class regionSocialEconomicaCentralVazquezdeCoronadoSanJose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Vázquez de Coronado',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Cascajal', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingCascajalVazquezdeCoronadoSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Dulce Nombre de Jesús', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingDulceNombredeJesusVazquezdeCoronadoSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Patalillo', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingPatalilloVazquezdeCoronadoSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanIsidroVazquezdeCoronadoSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanRafaelVazquezdeCoronadoSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingVazquezdeCoronadoSanJose.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
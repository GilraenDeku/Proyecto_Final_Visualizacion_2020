///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/El_Guarco/El_Guarco_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/El_Guarco/El_Tejar/El_Tejar_El_Guarco_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/El_Guarco/Patio_de_Agua/Patio_de_Agua_El_Guarco_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/El_Guarco/San_Isidro/San_Isidro_El_Guarco_Cartago_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/Cartago/El_Guarco/Tobosi/Tobosi_El_Guarco_Cartago_StoryTelling.dart';

class regionSocialEconomicaCentralElGuarcoCartago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de El Guarco',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('El Tejar', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingElTejarElGuarcoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Patio de Agua', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingPatiodeAguaElGuarcoCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanIsidroElGuarcoCartago.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tobosi', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTobosiElGuarcoCartago.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingElGuarcoCartago.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
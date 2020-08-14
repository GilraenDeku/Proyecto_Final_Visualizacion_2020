///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Mora/Mora_San_Jose_StoryTelling.dart';

class regionSocialEconomicaCentralMoraSanJose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Mora',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Cuidad Colón', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingCuidadColonMoraSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Guayabo', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingGuayaboMoraSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Jaris', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingJarisMoraSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Picagres', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingPicagresMoraSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Piedras Negras', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingPiedrasNegrasMoraSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Quitirrisí', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingQuitirrisiMoraSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tabarcia', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingTabarciaMoraSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingMoraSanJose.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
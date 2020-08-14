///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Turrubares/Turrubares_San_Jose_StoryTelling.dart';

class regionSocialEconomicaCentralTurrubaresSanJose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Turrubares',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Carara', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingCararaTurrubaresSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Juan de Mata', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanJuandeMataTurrubaresSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Luis', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanLuisTurrubaresSanJose.withSampleData()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Pablo', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingSanPabloTurrubaresSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingSanPedroTurrubaresSanJose.withSampleData()),
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
                MaterialPageRoute(builder: (context) => storytellingTurrubaresSanJose.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
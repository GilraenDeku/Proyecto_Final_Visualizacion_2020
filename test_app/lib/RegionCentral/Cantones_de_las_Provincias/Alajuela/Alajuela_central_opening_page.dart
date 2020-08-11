///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Alajuela/Alajuela_Alajuela_central_opening_page.dart';
import 'Atenas/Atenas_Alajuela_central_opening_page.dart';
import 'Grecia/Grecia_Alajuela_central_opening_page.dart';
import 'Naranjo/Naranjo_Alajuela_central_opening_page.dart';
import 'Palmares/Palmares_Alajuela_central_opening_page.dart';
import 'Poás/Poas_Alajuela_central_opening_page.dart';
import 'San_Ramón/San_Ramon_Alajuela_central_opening_page.dart';
import 'Valverde_Vega/Valverde_Vegas_Alajuela_central_opening_page.dart';
import 'Zarcero/Zarcero_Alajuela_central_opening_page.dart';
import 'Storytelling_Alajuela.dart';

class regionSocialEconomicaCentralAlajuela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Cantones de la Provincia de Alajuela',
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
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralAlajuelaAlajuela()),
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
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralSanRamonAlajuela()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Grecia', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralGreciaAlajuela()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Atenas', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralAtenasAlajuela()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Naranjo', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralNaranjoAlajuela()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Palmares', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralPalmaresAlajuela()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Poás', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralPoasAlajuela()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Zarcero', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralZarceroAlajuela()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Valverde Vega', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralValverdeVegaAlajuela()),
              )
            },
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('StoryTelling de la Provincia', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storytellingAlajuela.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
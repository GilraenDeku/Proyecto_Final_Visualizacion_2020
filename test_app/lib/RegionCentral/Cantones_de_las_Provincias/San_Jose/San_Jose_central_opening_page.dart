///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Alajuelita/Alajuelita_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Aserr%C3%AD/Aserri_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Curridabat/Curridabat_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Desamparados/Desamparados_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Dota/Dota_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Escaz%C3%BA/Escazu_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Goicoechea/Goicoechea_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Le%C3%B3n_Cort%C3%A9s/Leon_Cortes_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Montes_de_Oca/Montes_de_Oca_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Mora/Mora_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Moravia/Moravia_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Puriscal/Puriscal_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/San_Jose/San_Jose_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/San_Jose_StoryTelling.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Santa_Ana/Santa_Ana_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Tarraz%C3%BA/Tarrazu_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Tib%C3%A1s/Tibas_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/Turrubares/Turrubares_San_Jose_central_opening_page.dart';
import 'package:testapp/RegionCentral/Cantones_de_las_Provincias/San_Jose/V%C3%A1squez_de_Coronado/Vazquez_de_Coronado_San_Jose_central_opening_page.dart';

class regionSocialEconomicaCentralSan_Jose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Cantones de la Provincia de San José',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Alajuelita', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralAlajuelitaSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Aserrí', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralAserriSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Curridabat', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralCurridabatSanJose()),
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
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralDesamparadosSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Dota', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralDotaSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Escazú', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralEscazuSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Goicoechea', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralGoicoecheaSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('León Cortés', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralLeonCortesSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Montes de Oca', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralMontesdeOcaSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Mora', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralMoraSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Moravia', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralMoraviaSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Puriscal', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralPuriscalSanJose()),
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
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralSanJoseSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santa Ana', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralSantaAnaSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tarrazú', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralTarrazuSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tibás', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralTibasSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Turrubares', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralTurrubaresSanJose()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Vásquez de Coronado', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaCentralVazquezdeCoronadoSanJose()),
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
                MaterialPageRoute(builder: (context) => storytellingSanJose.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
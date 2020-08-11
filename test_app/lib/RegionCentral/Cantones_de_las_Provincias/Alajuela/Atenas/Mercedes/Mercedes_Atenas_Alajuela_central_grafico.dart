import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GraficaRegionCentralMercedesAtenasAlajuela extends StatelessWidget {
  List<charts.Series> centralList;
  final bool animate;

  GraficaRegionCentralMercedesAtenasAlajuela(this.centralList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory GraficaRegionCentralMercedesAtenasAlajuela.withSampleData() {
    return new GraficaRegionCentralMercedesAtenasAlajuela(
      _centralData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 1,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff1976d2),
                bottom: TabBar(indicatorColor: Color(0xff9962D0), tabs: [
                  Tab(
                    icon: Icon(FontAwesomeIcons.home),
                  ),
                ]),
                title: Text('Región Central Distrito Mercedes'),
              ),
              body: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Porcentaje de viviendas con dispositivos tecnológicos',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Expanded(
                            child: new charts.PieChart(
                                centralList,
                                animate: animate,
                                // Configure the width of the pie slices to 30px. The remaining space in
                                // the chart will be left as a hole in the center. Adjust the start
                                // angle and the arc length of the pie so it resembles a gauge.
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 60, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi),
                                behaviors: [new charts.DatumLegend(

                                  // Positions for "start" and "end" will be left and right respectively
                                  // for widgets with a build context that has directionality ltr.
                                  // For rtl, "start" and "end" will be right and left respectively.
                                  // Since this example has directionality of ltr, the legend is
                                  // positioned on the right side of the chart.
                                  position: charts.BehaviorPosition.bottom,
                                  // By default, if the position of the chart is on the left or right of
                                  // the chart, [horizontalFirst] is set to false. This means that the
                                  // legend entries will grow as new rows first instead of a new column.
                                  horizontalFirst: false,

                                  outsideJustification: charts.OutsideJustification.endDrawArea,

                                  desiredMaxRows: 4,

                                  // This defines the padding around each legend entry.
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  // Set show measures to true to display measures in series legend,
                                  // when the datum is selected.
                                  showMeasures: true,



                                )]
                            ),
                          ),
                          /*
                          Text(
                            'Edades',
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          */
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<centralData, String>> _centralData() {
    final central = [
      new centralData(80, Color(0xff086972), 'Radio'),
      new centralData(64, Color(0xff01a9b4), 'Teléfono Fijo'),
      new centralData(88, Color(0xff87dfd6), 'Celular'),
      new centralData(20, Color(0xfffbfd8a), 'TV'),
      new centralData(91, Color(0xff111d5e), 'TV sin Cable'),
      new centralData(32, Color(0xffc70039), 'TV Cable/Satelital'),
      new centralData(33, Color(0xfff37121), 'Computadora'),
      new centralData(27, Color(0xffffbd69), 'Laptop'),
      new centralData(28, Color(0xffe36387), 'Internet'),
    ];

    return [
      new charts.Series<centralData, String>(
        id: 'Central',
        colorFn: (centralData centrals, _) =>
            charts.ColorUtil.fromDartColor(centrals.colorvar),
        domainFn: (centralData centrals, _) => centrals.test,
        measureFn: (centralData centrals, _) => centrals.centrals,
        data: central,
      )
    ];
  }
}

/// Sample ordinal data type.
class centralData {
  final int centrals;
  final Color colorvar;
  final String test;

  centralData(this.centrals, this.colorvar, this.test);
}
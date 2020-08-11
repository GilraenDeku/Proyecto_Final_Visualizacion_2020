import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class regionCentralStorytelling extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  regionCentralStorytelling(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory regionCentralStorytelling.withSampleData() {
    return new regionCentralStorytelling(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Center(
                    child: Text(
                      'Región Socioeconómica Central',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Center(
                    child: Text(
                      'Regiones Socioeconómicas de Costa Rica',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
    */
          //Text('1'),
        ],
      ),
    );

    Widget breveResenaSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Breve Reseña Histórica',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                    'Esta región constituye el centro económico y '
                        'político del país. Concentra el 65% de la población, '
                        'es decir es la región más densamente poblada del país. '
                        'Las principales actividades económicas son '
                        'la agricultura. También es la zona con mayor '
                        'desarrollo industrial y en ella se concentran la mayor '
                        'cantidad de instituciones del Estado.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'Los principales problemas que afectan a esta región, '
                        'crecimiento acelerado de la población, Problemas '
                        'de contaminación ambiental, problemas de '
                        'seguridad ciudadana entre otros',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.find_in_page, 'WEB'),
        ],
      ),
    );

    Widget chartSection = Container(
      height: 400,
      width: 400,
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Indicadores de tenencia de dispositivos de Tecnologías de '
                  'Información y Comunicación (TIC)',
              style: TextStyle(
                  fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: new charts.NumericComboChart(seriesList,
                  animate: animate,
                  behaviors: [
                    new charts.SeriesLegend(
                        position: charts.BehaviorPosition.top, desiredMaxRows: 4)
                  ],
                  // Configure the default renderer as a line renderer. This will be used
                  // for any series that does not define a rendererIdKey.
                  defaultRenderer: new charts.LineRendererConfig(),
                  // Custom renderer configuration for the point series.
                  customSeriesRenderers: [
                    new charts.PointRendererConfig(
                      // ID used to link series to this renderer.
                        customRendererId: 'customPoint')
                  ]),
            ),
          ],
        ),
      ),
    );


    Widget interpretacionCodigo= Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Interpretación del Gráfico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                    'Las regiones socioeconómicas de Costa Rica '
                        '(a menudo denominadas sólo como regiones funcionales) '
                        'son una subdivisión político-económica en la que '
                        'se ha delimitado este país centroamericano. Esta subdivisión '
                        'fue realizada por Decreto Ejecutivo Nº 7944 '
                        'del 26 de enero de 1978.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'Estas regiones son seis en total: Región Central, '
                        'Región Chorotega, Región Pacífico Central, '
                        'Región Brunca, Región Huetar Atlántica y '
                        'Región Huetar Norte. Algunos nombres de '
                        'región se derivan de las etnias precolombinas '
                        'que habitaron en esas zonas geográficas. ',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
        ],
      ),
    );



    return MaterialApp(
        home: DefaultTabController(
            length: 1,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff1976d2),
                title: Text('Región Central'),
              ),
              body: ListView(
                children: [
                  Image.asset(
                    'assets/regionCentral.png',
                    fit: BoxFit.cover,
                  ),
                  titleSection,
                  buttonSection,
                  breveResenaSection,
                  chartSection,
                  FlatButton(
                    onPressed: () {
                      showGeneralDialog(
                          context: context,
                          barrierDismissible: true,
                          barrierLabel: MaterialLocalizations.of(context)
                              .modalBarrierDismissLabel,
                          barrierColor: Colors.black45,
                          transitionDuration: const Duration(milliseconds: 500),
                          pageBuilder: (BuildContext buildContext,
                              Animation animation,
                              Animation secondaryAnimation) {
                            return Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                padding: EdgeInsets.all(20),
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/regionCentralGrafico.jpg',
                                      width: 400,
                                      height: 360,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    textColor: Colors.black,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFFD16BA5),
                            Color(0xFF86A8E7),
                            Color(0xFF5FFBF1),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child:
                      const Text('Ver Información del Gráfico', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  interpretacionCodigo,


                ],
              ),
            )));
  }



  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final SanJoseData = [
      new LinearSales(0, 84),
      new LinearSales(1, 65),
      new LinearSales(2, 90),
      new LinearSales(3, 26),
      new LinearSales(4, 92),
      new LinearSales(5, 58),
      new LinearSales(6, 41),
      new LinearSales(7, 33),
      new LinearSales(8, 43),
    ];

    var AlajuelaData = [
      new LinearSales(0, 76),
      new LinearSales(1, 56),
      new LinearSales(2, 87),
      new LinearSales(3, 18),
      new LinearSales(4, 90),
      new LinearSales(5, 40),
      new LinearSales(6, 30),
      new LinearSales(7, 24),
      new LinearSales(8, 29),
    ];

    var CartagoData = [
      new LinearSales(0, 86),
      new LinearSales(1, 62),
      new LinearSales(2, 90),
      new LinearSales(3, 21),
      new LinearSales(4, 94),
      new LinearSales(5, 41),
      new LinearSales(6, 38),
      new LinearSales(7, 27),
      new LinearSales(8, 35),
    ];

    var HerediaData = [
      new LinearSales(0, 84),
      new LinearSales(1, 67),
      new LinearSales(2, 91),
      new LinearSales(3, 29),
      new LinearSales(4, 91),
      new LinearSales(5, 56),
      new LinearSales(6, 43),
      new LinearSales(7, 37),
      new LinearSales(8, 48),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'San José',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: SanJoseData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Alajuela',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: AlajuelaData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Cartago',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: CartagoData,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Heredia',
        colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: HerediaData,
      ),
    ];
  }


  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        GestureDetector(
            child:
            Icon(icon, color: color),
            onTap: () {
              // do what you need to do when "Click here" gets clicked
              launch('https://es.wikipedia.org/wiki/Regi%C3%B3n_Central_(Costa_Rica)');
            }
        ),

        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Center(
            child:
            GestureDetector(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: color,
                  ),
                ),
                onTap: () {
                  // do what you need to do when "Click here" gets clicked
                  launch('https://es.wikipedia.org/wiki/Regi%C3%B3n_Central_(Costa_Rica)');
                }
            ),
          ),
        ),
      ],
    );
  }

}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
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
                    'En la actualidad vivimos en un mundo en donde cada vez '
                        'el uso de la tecnología se hace más indispensable, '
                        'no solo para entretenernos sino también para '
                        'comunicarnos, informarnos y trabajar, es por eso '
                        'que es fundamental comprender el nivel de acceso '
                        'que tiene a la tecnología: como lo es el radio, '
                        'teléfonos, computadoras, televisores y el internet,'
                        ' para así analizar la brecha tecnológica que '
                        'existe y lograr crear proyectos que abarquen más'
                        ' a la población',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'En la provincia de San José se observa que el 84% de las '
                        'casas cuentan con radio o equipos de sonido, el 65% con'
                        ' línea de teléfono fija, 90% con teléfono celular, 26% '
                        'con pantalla de televisor, de este 26% el 92% de los '
                        'televisores son convencionales y el 58% son con cable o'
                        ' satélite, el 41% tienen una computadora de escritorio,'
                        ' 33% con una computadora portátil y el 43% de las casas'
                        ' cuentan con acceso de internet.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'En la provincia de Alajuela se observa que el 76% de las '
                        'casas cuentan con radio o equipos de sonido, el 56% con'
                        ' línea de teléfono fija, 87% con teléfono celular, 18% '
                        'con pantalla de televisor, de este 18% el 90% de los '
                        'televisores son convencionales y el 40% son con cable o'
                        ' satélite, el 30% tienen una computadora de escritorio,'
                        ' 24% con una computadora portátil y el 29% de las casas'
                        ' cuentan con acceso de internet.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'En la provincia de Cartago se observa que el 86% de las '
                        'casas cuentan con radio o equipos de sonido, el 62% con'
                        ' línea de teléfono fija, 90% con teléfono celular, 21% '
                        'con pantalla de televisor, de este 21% el 94% de los '
                        'televisores son convencionales y el 41% son con cable o'
                        ' satélite, el 38% tienen una computadora de escritorio,'
                        ' 27% con una computadora portátil y el 35% de las casas'
                        ' cuentan con acceso de internet.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'En la provincia de Heredia se observa que el 84% de las '
                        'casas cuentan con radio o equipos de sonido, el 67% con'
                        ' línea de teléfono fija, 91% con teléfono celular, 29% '
                        'con pantalla de televisor, de este 29% el 91% de los '
                        'televisores son convencionales y el 56% son con cable o'
                        ' satélite, el 43% tienen una computadora de escritorio,'
                        ' 37% con una computadora portátil y el 48% de las casas'
                        ' cuentan con acceso de internet.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'Cabe destacar que, como en el caso de las pantallas'
                        ' de televisor, varias de las casas cuentan con más'
                        ' de un tipo de tecnología por lo cual los índices'
                        ' son más altos. ',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'En conclusión, se puede observar que la provincia con '
                        'mayor desarrollo tecnológico es Heredia. Esto se '
                        'debe a que Heredia es una provincia que contiene la '
                        'mayor concentración de zonas francas del país, '
                        'haciendo así una alta demanda por tecnología. Cabe '
                        'destacar que la provincia de Alajuela se encuentra en '
                        'proceso de cremimiento tecnológico por sus múltiples'
                        ' proyectos industriales, como son las zonas francas',
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
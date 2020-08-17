import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class storytellingRegionesSocioeconomicas extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  storytellingRegionesSocioeconomicas(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory storytellingRegionesSocioeconomicas.withSampleData() {
    return new storytellingRegionesSocioeconomicas(
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
                      'Regiones Socioeconómicas de Costa Rica',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Regiones Socioeconómicas',
                  style: TextStyle(
                    color: Colors.grey[500],
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
                'Porcentaje de viviendas que tienen acceso a internet',
                style: TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: new charts.OrdinalComboChart(seriesList,
                    animate: animate,
                    behaviors: [
                      new charts.SeriesLegend(
                        // Positions for "start" and "end" will be left and right respectively
                        // for widgets with a build context that has directionality ltr.
                        // For rtl, "start" and "end" will be right and left respectively.
                        // Since this example has directionality of ltr, the legend is
                        // positioned on the right side of the chart.
                        position: charts.BehaviorPosition.top,
                        // For a legend that is positioned on the left or right of the chart,
                        // setting the justification for [endDrawArea] is aligned to the
                        // bottom of the chart draw area.
                        outsideJustification: charts.OutsideJustification.middle,
                        // By default, if the position of the chart is on the left or right of
                        // the chart, [horizontalFirst] is set to false. This means that the
                        // legend entries will grow as new rows first instead of a new column.
                        horizontalFirst: false,
                        // By setting this value to 2, the legend entries will grow up to two
                        // rows before adding a new column.
                        desiredMaxRows: 2,
                        // This defines the padding around each legend entry.
                        cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                        // Render the legend entry text with custom styles.
                        entryTextStyle: charts.TextStyleSpec(
                            color: charts.Color(r: 127, g: 63, b: 191),
                            fontFamily: 'Georgia',
                            fontSize: 14),
                      )
                    ],
                    // Configure the default renderer as a bar renderer.
                    defaultRenderer: new charts.BarRendererConfig(
                        groupingType: charts.BarGroupingType.grouped),
                    // Custom renderer configuration for the line series. This will be used for
                    // any series that does not define a rendererIdKey.
                    customSeriesRenderers: [
                      new charts.LineRendererConfig(
                        // ID used to link series to this renderer.
                          customRendererId: 'customLine')
                    ]

                ),
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
                    'El internet es una de las principales fuentes proveedoras '
                        'de información en la actualidad para la población, por '
                        'lo cual saber el nivel de acceso de internet que tiene'
                        ' la población es fundamental para así lograr crear '
                        'proyectos que abarquen a la mayor población posible.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'En la región central se muestra los porcentajes de casas'
                        ' que adquieren servicio de internet por esos medios: '
                        'por teléfono fijo 25%, por cable 39%, por teléfono '
                        'móvil 38% y por otros medios 1%',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'El total de las regiones del país adquieren los servicios'
                        ' de internet: por teléfono fijo 20%, por cable 31%, '
                        'por teléfono móvil 48% y por otros medios 1%',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'En conclusión, la región central es, en comparación con '
                        'el resto del país, la que adquiere más servicio de '
                        'internet por cable.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
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
                title: Text('Regiones Socioeconómicas'),
              ),
              body: ListView(
                children: [
                  Image.asset(
                    'assets/regionesSECR.jpg',
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
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final AdesktopSalesData = [
      new OrdinalSales('Teléfono', 23),
      new OrdinalSales('Cable', 39),
      new OrdinalSales('Móvil', 38),
      new OrdinalSales('Otros', 1),
    ];

    final mobileSalesData = [
      new OrdinalSales('Teléfono', 20),
      new OrdinalSales('Cable', 31),
      new OrdinalSales('Móvil', 48),
      new OrdinalSales('Otros', 1),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
          id: 'Central',
          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: AdesktopSalesData),

      new charts.Series<OrdinalSales, String>(
          id: 'Totales',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: mobileSalesData)
      // Configure our custom line renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customLine'),
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
              launch('https://es.wikipedia.org/wiki/Regiones_socioecon%C3%B3micas_de_Costa_Rica');
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
                  launch('https://es.wikipedia.org/wiki/Regiones_socioecon%C3%B3micas_de_Costa_Rica');
                }
            ),
          ),
        ),
      ],
    );
  }

}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
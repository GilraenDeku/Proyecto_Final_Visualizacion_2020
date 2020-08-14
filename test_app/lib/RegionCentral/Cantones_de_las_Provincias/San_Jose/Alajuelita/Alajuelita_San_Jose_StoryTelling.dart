import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class storytellingAlajuelitaSanJose extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  storytellingAlajuelitaSanJose(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory storytellingAlajuelitaSanJose.withSampleData() {
    return new storytellingAlajuelitaSanJose(
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
                      'Cantón de Alajuelita',
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
                      'Provincia de San José, Región Central',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                      textAlign: TextAlign.center,
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
                    'Alajuelita es un cantón situado en el área centro-norte '
                        'de la provincia de San José. En 1909 Alajuelita se '
                        'constituyó en el cantón número diez de la provincia '
                        'de San José. De acuerdo con el Censo Nacional del '
                        '2011, la población del cantón era de 77 603 '
                        'habitantes. El cantón se caracteriza por tradiciones '
                        'como el Chinchiví y la chicha (bebidas típicas), '
                        'desfile de boyeros en honor a Santo Cristo de '
                        'Esquipulas.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'Distritos: Alajuelita, San Josecito, '
                        'San Antonio, Concepción y San Felipe.',
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
          _buildMuniButtonColumn(color, Icons.find_in_page, 'MUNICIPALIDAD'),
          _buildMapaButtonColumn(color, Icons.find_in_page, 'MAPA'),
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
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: new charts.PieChart(seriesList,
                  animate: animate,
                  // Configure the width of the pie slices to 60px. The remaining space in
                  // the chart will be left as a hole in the center.
                  //
                  // [ArcLabelDecorator] will automatically position the label inside the
                  // arc if the label will fit. If the label will not fit, it will draw
                  // outside of the arc with a leader line. Labels can always display
                  // inside or outside using [LabelPosition].
                  //
                  // Text style for inside / outside can be controlled independently by
                  // setting [insideLabelStyleSpec] and [outsideLabelStyleSpec].
                  //
                  // Example configuring different styles for inside/outside:
                  //       new charts.ArcLabelDecorator(
                  //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
                  //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
                  defaultRenderer: new charts.ArcRendererConfig(
                      arcWidth: 190,
                      arcRendererDecorators: [new charts.ArcLabelDecorator()])),
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
                /*
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

                 */
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
                title: Text('Cantón de Alajuelita'),
              ),
              body: ListView(
                children: [
                  Image.asset(
                    'assets/AlajuelitaCanton.png',
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
                                      'assets/SantaBarbaraCanton.png',
                                      width: 450,
                                      height: 400,
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
    final data = [
      new LinearSales(0, 83, Color(0xffD54062)),
      new LinearSales(1, 58, Color(0xffFFA36C)),
      new LinearSales(2, 91, Color(0xffEBDC87)),
      new LinearSales(3, 19, Color(0xff799351)),
      new LinearSales(4, 95, Color(0xff0F4C75)), //ff6538
      new LinearSales(5, 52, Color(0xff00B7C2)),
      new LinearSales(6, 35, Color(0xff8675A9)),
      new LinearSales(7, 21, Color(0xffEEBB40)),
      new LinearSales(8, 30, Color(0xff900C3F)),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        colorFn: (LinearSales sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorvar),
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearSales row, _) => '${row.sales}',
      )
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
              launch('https://es.wikipedia.org/wiki/Cant%C3%B3n_de_Alajuelita');
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
                  launch('https://es.wikipedia.org/wiki/Cant%C3%B3n_de_Alajuelita');
                }
            ),
          ),
        ),
      ],
    );
  }

  Column _buildMuniButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        GestureDetector(
            child:
            Icon(icon, color: color),
            onTap: () {
              // do what you need to do when "Click here" gets clicked
              launch('http://www.munialajuelita.go.cr/');
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
                  launch('http://www.munialajuelita.go.cr/');
                }
            ),
          ),
        ),
      ],
    );
  }

  Column _buildMapaButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        GestureDetector(
            child:
            Icon(icon, color: color),
            onTap: () {
              // do what you need to do when "Click here" gets clicked
              launch('https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source'
                  '=web&cd=&cad=rja&uact=8&ved=2ahUKEwj71-uV5ZnrAhWRjVkKHeY'
                  'GBEoQFjAWegQIBhAB&url=https%3A%2F%2Fwww.hacienda.go.cr%'
                  '2Fdocs%2F55367993a54f5_110_Mapas_Valores_Distritos%2520'
                  '01%2520a%252006%2520(Canton%2520Alajuelita).pd'
                  'f&usg=AOvVaw1hFQxtwgJW5W7JYmfCy6YO');
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
                  launch('https://www.google.com/url?sa=t&rct=j&q=&e'
                      'src=s&source=web&cd=&cad=rja&uact=8&ved=2a'
                      'hUKEwj71-uV5ZnrAhWRjVkKHeYGBEoQFjAWegQIBhAB&url=ht'
                      'tps%3A%2F%2Fwww.hacienda.go.cr%2Fdocs%2F55367993a54'
                      'f5_110_Mapas_Valores_Distritos%252001%2520a%252006%'
                      '2520(Canton%2520Alajuelita).pdf&usg=AOvVaw1hFQxtwg'
                      'JW5W7JYmfCy6YO');
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
  final Color colorvar;

  LinearSales(this.year, this.sales, this.colorvar);
}
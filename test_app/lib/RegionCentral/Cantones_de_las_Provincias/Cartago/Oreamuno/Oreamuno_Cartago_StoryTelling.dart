import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class storytellingOreamunoCartago extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  storytellingOreamunoCartago(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory storytellingOreamunoCartago.withSampleData() {
    return new storytellingOreamunoCartago(
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
                      'Cantón de Oreamuno',
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
                      'Provincia de Cartago, Región Central',
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
                    'Es el cantón número 7 de la provincia de Cartago, '
                        'Costa Rica. Su ciudad cabecera es San Rafael, '
                        'unida al área metropolitana de la ciudad de Cartago. '
                        'El cantón está situado a las faldas del Volcán Irazú. '
                        'Su actividad económica es básicamente agrícola, con '
                        'la siembra y comercialización de hortalizas, tales '
                        'como papas, cebollas, zanahorias, yucas y lechugas, '
                        'entre otras.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'Distritos: San Rafael, Cot, '
                        'Potrero Cerrado, Cipreses, Santa Rosa',
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
                    'En el cantón de Oreamuno se observa que el 89% de las '
                        'casas cuentan con radio o equipos de sonido, el 61% con'
                        ' línea de teléfono fija, 92% con teléfono celular, 21%'
                        ' con pantalla de televisor, de este 21% el 95% de los '
                        'televisores son convencionales y el 40% son con cable '
                        'o satélite, el 38% tienen una computadora de escritorio,'
                        ' 26% con una computadora portátil y el 33% de las casas'
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
                    'En conclusión, se puede observar que la tecnología que más'
                        ' utiliza la población son los teléfonos celulares los'
                        ' cuales van en un aumento considerable. A pesar de que'
                        ' los celulares son los que más utiliza la población, no'
                        ' se recomienda enfocarse solo a esta tecnología ya que'
                        ' los índices de uso de las demás tecnologías son muy '
                        'altos, lo que indica que en el cantón de Oreamuno el'
                        ' uso de las tecnologías es bastante grande.',
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
                title: Text('Cantón de Oreamuno'),
              ),
              body: ListView(
                children: [
                  Image.asset(
                    'assets/OreamunoCanton.png',
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
                                      'assets/InformacionGraficoSanJose.png',
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
      new LinearSales(0, 89, Color(0xffD54062)),
      new LinearSales(1, 61, Color(0xffFFA36C)),
      new LinearSales(2, 92, Color(0xffEBDC87)),
      new LinearSales(3, 21, Color(0xff799351)),
      new LinearSales(4, 95, Color(0xff0F4C75)), //ff6538
      new LinearSales(5, 40, Color(0xff00B7C2)),
      new LinearSales(6, 38, Color(0xff8675A9)),
      new LinearSales(7, 26, Color(0xffEEBB40)),
      new LinearSales(8, 33, Color(0xff900C3F)),
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
              launch('https://es.wikipedia.org/wiki/Cant%C3%B3n_de_Oreamuno');
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
                  launch('https://es.wikipedia.org/wiki/Cant%C3%B3n_de_Oreamuno');
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
              launch('https://www.oreamuno.go.cr/');
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
                  launch('https://www.oreamuno.go.cr/');
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
                  '=web&cd=&cad=rja&uact=8&ved=2ahUKEwjfpa6RsaHrAhWs1FkKHdVu'
                  'DDQQFjAQegQIBxAB&url=https%3A%2F%2Fwww.hacienda.go.cr%2Fd'
                  'ocs%2F544rtwertwrtwe5rt4wrt5w4rtwe4rt47.pdf&usg=AOvVaw3W0'
                  'PwUl-8PeVM-MdquOpgh');
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
                  launch('https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source'
                      '=web&cd=&cad=rja&uact=8&ved=2ahUKEwjfpa6RsaHrAhWs1FkKH'
                      'dVuDDQQFjAQegQIBxAB&url=https%3A%2F%2Fwww.hacienda.go.'
                      'cr%2Fdocs%2F544rtwertwrtwe5rt4wrt5w4rtwe4rt47.pdf&u'
                      'sg=AOvVaw3W0PwUl-8PeVM-MdquOpgh');
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
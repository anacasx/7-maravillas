import 'package:flutter/material.dart';

class cristo extends StatelessWidget {
  const cristo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('El Cristo Redentor'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          contenido(context),
        ],
      ),
    );
  }

  Widget contenido(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 30),
                  child: FittedBox(
                    child: Text(
                      "Cristo de Corcovado",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Icon(
                            Icons.accessibility,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 50,
                          ),
                        ),
                        Text(
                          "Brasil",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                            child: Text(
                              "Justo hace diez años que los cariocas pudieron festejar por todo lo alto el haberse convertido en la primera ciudad del mundo en ser declarada como Patrimonio de la Humanidad. Tanto su patrimonio cultural como el natural, con una geografía urbana que engloba mar, montaña y selva. fuero clave en la decisión. A la ciudad Maravillosa no le faltan iconos; pero solo uno de ellos está considerado como una de las nuevas siete maravillas del mundo: el Cristo de Corcovado, la escultura art decó más grande del mundo. Hasta la cima donde se sitúa se puede llegar en coche, pero es mejor hacerlo en el Trem do Corcovado que atraviesa el frondoso Parque Nacional Tijuca. ",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage('assets/img/cristo-brasil.jpg'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

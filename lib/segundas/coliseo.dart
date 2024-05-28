import 'package:flutter/material.dart';

class coliseo extends StatelessWidget {
  const coliseo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coliseo de Roma'),
        backgroundColor: Colors.yellow.shade800,
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
                      "El Coliseo de Roma",
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
                            Icons.account_balance_sharp,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 50,
                          ),
                        ),
                        Text(
                          "Italia",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                            child: Text(
                              "La inauguración con el sacrificio de más de 5.000 fieras del Coliseo en el año 80 supuso uno de los mayores acontecimientos sociales del Imperio Romano. Desde entonces, el anfiteatro empezado por el emperador Vespasiano en el 72 d. C. no ha dejado generar fascinación. Este monumento concentra como pocos historia y arquitectura. En él estaba todo perfectamente estudiado para acoger a los hasta 50.000 espectadores ordenados por su rango social que se concentraban para ver peleas de gladiadores, ejecuciones, recreaciones de batallas o caza de animales. ",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 25,
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
                    image: AssetImage('assets/img/coliseo.jpg'),
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

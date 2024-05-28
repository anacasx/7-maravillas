import 'package:flutter/material.dart';

class chichen extends StatelessWidget {
  const chichen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chichén Itzá'),
        backgroundColor: Colors.blue,
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
                      "Chichén Itzá",
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
                            Icons.signal_cellular_4_bar,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 50,
                          ),
                        ),
                        Text(
                          "México",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                            child: Text(
                              "El yacimiento arqueológico de Chichén Itzá se abre en medio de la inmensa selva de la península de Yucatán y cubre un área de 6.5 km2. Basta ver nada más acceder al recinto la espectacular pirámide de Kukulcán para comprender que este fuera uno de los lugares elegidos para incorporarse en la lista de las nuevas siete maravillas del mundo. La geometría de la pirámide guarda el secreto del dominio que tenían sobre la astronomía los mayas. Algo que se puede comprobar con el descenso de la serpiente durante el equinoccio de otoño y de primavera. La cancha del juego de la pelota, la mayor de México, con bajorrelieves donde se representan las decapitaciones de jugadores, los baños de vapor o el observatorio astronómico, con puertas y ventanas alineadas con los astros celestes en determinadas fecha, resultan igualmente espectaculares. ",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 20,
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
                    image: AssetImage('assets/img/chichen-itza.jpeg'),
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

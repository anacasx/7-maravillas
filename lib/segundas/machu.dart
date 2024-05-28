import 'package:flutter/material.dart';

class machu extends StatelessWidget {
  const machu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Machu Picchu'),
        backgroundColor: Colors.brown,
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
                      "Machu Picchu",
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
                            Icons.volcano,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 50,
                          ),
                        ),
                        Text(
                          "Perú",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                            child: Text(
                              "Tras su visita a Machu Picchu en octubre de 1943, Pablo Neruda vio en la ciudad abandonada entre la espesa y húmeda selva un símbolo de la opresión de los pueblos indígenas: 'Entonces en la escala de la tierra he subido/entre la atroz maraña de las selvas perdidas/hasta ti, Machu Picchu', escribió en Alturas de Machu Picchu. Aún se le puede escuchar recitar sus emocionantes versos gracias a un audio grabado en Santiago de Chile el 10 de marzo de 1947. Lo cierto es que desde que el explorador Hiram Bingham volvió a colocarla en el mapa en 1911, la ciudadela no ha dejado de fascinar a todo aquel que, dejando atrás Aguas Calientes, ha ascendido hasta la cumbre donde los incas lograron convertir una agresiva orografía en una ciudadela inmortal. ",
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
                    image: AssetImage('assets/img/machu-picchu.jpg'),
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

import 'package:flutter/material.dart';

class petra extends StatelessWidget {
  const petra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Petra'),
        backgroundColor: Colors.deepOrange,
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
                      "Petra",
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
                            Icons.landslide,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 50,
                          ),
                        ),
                        Text(
                          "Jordania",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                            child: Text(
                              "Petra pasó a formar parte de la lista de las nuevas siete maravillas del mundo por votación popular. Y eso que el 80% todavía está oculto; pero lo cierto es que Petra, o Raqmu, como la llamaban sus segundos pobladores, los nabateos, es un enclave fascinante. Se haya tenido la oportunidad de visitar o ya solo sea por haber visto Indiana Jones y la última cruzada, todo el mundo sabe que tras superar el estrecho desfiladero lo que aparece al fondo es el Al-Khazneh, el Tesoro del Faraón.",
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
                    image: AssetImage('assets/img/petra.jpg'),
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

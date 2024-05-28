import 'package:flutter/material.dart';

class taj extends StatelessWidget {
  const taj({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taj Mahal'),
        backgroundColor: Colors.purple,
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
                      "Taj Mahal",
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
                            Icons.mosque,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 50,
                          ),
                        ),
                        Text(
                          "India",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                            child: Text(
                              "El emperador Sha Jahan ordenó levantarlo con el deseo de plasmar materialmente su reinado, tal como había hecho antes con los jardines Shalimar de Lahore, el Fuerte Rojo o la Jama Masjid de Delhi. Todo ello formaba parte de su legado; pero con el paso del tiempo ha trascendido la versión más poética de la construcción del famoso mausoleo de Agra, la de que el emperador ordenó construirlo en memoria de su cuarta esposa, la favorita. Sea como sea, la belleza simétrica y blanca del Taj Mahal es de esas que despiertan intensas sensaciones. 'Una lágrima en la mejilla del tiempo', como dijo el poeta Rabindranath Tagore.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 23,
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
                    image: AssetImage('assets/img/taj-mahal.jpg'),
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

import 'package:flutter/material.dart';

class muralla extends StatelessWidget {
  const muralla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Gran Muralla China'),
        backgroundColor: Colors.red,
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
                      "La Gran Muralla",
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
                            Icons.fence_rounded,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 50,
                          ),
                        ),
                        Text(
                          "China",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                            child: Text(
                              "China no deja de sorprender a Occidente con sus últimos proyectos de ingeniería, puentes de cristal de vidrio, fantasiosas bibliotecas, teatros y rascacielos… Grandes infraestructuras con las que exportar su estatus de nueva potencia económica. Pero en un pasado, la mayor de las construcciones chinas se levantó como barrera y frontera inexpugnable, para cerrar la frontera norte del Imperio chino a las invasiones que venían desde  Mongolia y Manchuria.…Con más de 2.000 años de historia, la Gran Muralla ha estado ligada a las dinastías más importantes de China, como la Dinastía Qin y la Ming. Más de 21.000 kilómetros entre paisajes fabulosos que cruzan selvas y desiertos y el mito de que es una de las únicas construcciones humanas que se pueden ver desde el cielo llevaron a que fuera escogida como una de las nuevas maravillas del mundo moderno.",
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
                    image: AssetImage('assets/img/muralla-china.jpeg'),
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

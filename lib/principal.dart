import 'package:flutter/material.dart';
import 'package:maravillas/segundas/chichen.dart';
import 'package:maravillas/segundas/coliseo.dart';
import 'package:maravillas/segundas/cristo.dart';
import 'package:maravillas/segundas/machu.dart';
import 'package:maravillas/segundas/muralla.dart';
import 'package:maravillas/segundas/petra.dart';
import 'package:maravillas/segundas/taj.dart';
import 'package:maravillas/segundas/form.dart';

class principal extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            //barra superior
            title: Text(
                "N U E V A S   S I E T E   M A R A V I L L A S    D E L    M U N D O    M O D E R N O"),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            centerTitle: true,
            //leading: Icon(Icons.account_balance_sharp),
            actions: [
              IconButton(
                icon: Icon(Icons.read_more),
                tooltip: 'Suscríbete',
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const form()),
                  ),
                },
              ),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.yellow.shade600,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Text(
                    "Siete Maravillas",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 40,
                    ),
                  ),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_balance_sharp,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 35,
                  ),
                  title: Text(
                    "Coliseo de Roma",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(
                      builder: (_) => const coliseo(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.accessibility,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 35,
                  ),
                  title: Text(
                    "Cristo Redentor",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(
                      builder: (_) => const cristo(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.landslide,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 35,
                  ),
                  title: Text(
                    "Petra",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(
                      builder: (_) => const petra(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.fence_rounded,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 35,
                  ),
                  title: Text(
                    "Gran Muralla China",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(
                      builder: (_) => const muralla(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.volcano,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 35,
                  ),
                  title: Text(
                    "Machu Picchu",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(
                      builder: (_) => const machu(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.signal_cellular_4_bar,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 35,
                  ),
                  title: Text(
                    "Chichén Itzá",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(
                      builder: (_) => const chichen(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.mosque,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 35,
                  ),
                  title: Text(
                    "Taj Mahal",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(
                      builder: (_) => const taj(),
                    );
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
          ),
          body: Column(
            children: <Widget>[
              contenido(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget contenido(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image(
              height: 550,
              //fit: BoxFit.fitWidth,
              fit: BoxFit.fitHeight,
              filterQuality: FilterQuality.high,
              image: AssetImage('assets/img/maravillas_7.jpg'),
            ),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: Icon(
                  Icons.account_balance_sharp,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.accessibility,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.landslide,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.fence_rounded,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.volcano,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.signal_cellular_4_bar,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.mosque,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

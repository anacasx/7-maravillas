import 'package:flutter/material.dart';

class form extends StatelessWidget {
  const form({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suscríbete'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          formul(),
          //InputText(),
          //CheckyBox(),
          //Radios(),
        ],
      ),
    );
  }
}

class CheckyBox extends StatefulWidget {
  const CheckyBox({super.key});

  @override
  State<CheckyBox> createState() => CheckBoxy();
}

class CheckBoxy extends State<CheckyBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.yellow.shade600;
      }
      return Colors.black;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

enum Opciones { frecuente, amateur }

class Radios extends StatefulWidget {
  const Radios({super.key});

  @override
  State<Radios> createState() => _Radios();
}

class _Radios extends State<Radios> {
  Opciones? _character = Opciones.amateur;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Amateur'),
          leading: Radio<Opciones>(
            value: Opciones.amateur,
            groupValue: _character,
            onChanged: (Opciones? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Frecuente'),
          leading: Radio<Opciones>(
            value: Opciones.frecuente,
            groupValue: _character,
            onChanged: (Opciones? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Registro exitoso'),
          content: const Text('¡Ahora formas parte de nuestra comunidad!'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text(
        'Enviar',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class formul extends StatefulWidget {
  const formul({super.key});

  @override
  formula createState() {
    return formula();
  }
}

class formula extends State<formul> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Nombre",
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Correo",
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Soy viajero:"),
                  ],
                ),
                Radios(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CheckyBox(),
                    Text(
                        "Quiero recibir notificaciones en mi correo electrónico."),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: DialogExample(),
                //child: const Text('Enviar'),
                style: TextButton.styleFrom(backgroundColor: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

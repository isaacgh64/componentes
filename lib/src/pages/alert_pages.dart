// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertPage'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: const StadiumBorder(),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            title: const Text('Título'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text('Este es el contenido de la caja abierta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.of(context).pop()),
              FlatButton(
                  child: const Text('Ok'),
                  onPressed: () => Navigator.of(context).pop()),
            ],
          );
        });
  }
}

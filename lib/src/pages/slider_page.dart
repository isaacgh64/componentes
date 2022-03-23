import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              Expanded(child: _crearImagen()),
            ],
          )),
    );
  }

  _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  _crearImagen() {
    return Image(
      image: const NetworkImage(
          'https://image.api.playstation.com/vulcan/img/rnd/202010/2621/H9v5o8vP6RKkQtR77LIGrGDE.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}

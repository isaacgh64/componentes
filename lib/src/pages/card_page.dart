import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text(
                'Soy una descripción de una tarjeta para que ustedes vean y tengan una descripción de lo que Fernando este nos quiere enseñar'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: 'assets/jar-loading.gif',
            image:
                'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',
            fadeInDuration: const Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /*const Image(
            image: NetworkImage(
                'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg'),
          ),*/
          Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text('No tengo ni idea de que poner'))
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: card,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
    );
  }
}

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AvatarPage'),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cope-cdnmed.agilecontent.com/resources/jpg/1/7/1542054780971.jpg'),
              radius: 30.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: const Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://themoney.co/wp-content/uploads/2022/01/How-much-was-Stan-Lee-Worth-when-he-passed-away.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}

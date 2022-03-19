import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
          Text('Xgram'),
          Icon(Icons.add),
          Icon(Icons.favorite),
          Icon(Icons.share),
        ]),
      ),
      body: const Center(child: Text('HOME')),
    );
  }
}

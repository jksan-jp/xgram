import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            'Xgram',
            style: TextStyle(color: Colors.black),
          ),
          Row(
            children: const [
              Icon(Icons.add),
              Icon(Icons.favorite),
              Icon(Icons.share),
            ],
          )
        ]),
      ),
      body: const Center(child: Text('HOME')),
    );
  }
}

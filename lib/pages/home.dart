import 'package:flutter/material.dart';
import 'package:xgram/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);

  final List people = [
    'kotathefriend',
    'obama',
    'mitch',
    'tomas egison',
    'eeee',
    'ffff',
    'gggg'
  ];

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
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),
            ],
          )
        ]),
      ),
      body: Column(children: [
        // STORIES
        SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                })),
        // POSTS
      ]),
    );
  }
}

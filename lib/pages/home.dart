import 'package:flutter/material.dart';
import 'package:xgram/util/bubble_stories.dart';

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
        Row(
          children: const [
            BubbleStories(
              text: 'a',
            ),
            BubbleStories(
              text: 'b',
            ),
            BubbleStories(
              text: 'c',
            ),
            BubbleStories(
              text: 'd',
            ),
            BubbleStories(
              text: 'e',
            )
          ],
        )
        // POSTS
      ]),
    );
  }
}

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
        SizedBox(
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              BubbleStories(
                text: 'kotathefriend',
              ),
              BubbleStories(
                text: 'obana',
              ),
              BubbleStories(
                text: 'mitch',
              ),
              BubbleStories(
                text: 'tomas egison',
              ),
              BubbleStories(
                text: 'e',
              ),
              BubbleStories(
                text: 'f',
              ),
              BubbleStories(
                text: 'g',
              )
            ],
          ),
        )
        // POSTS
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  const UserPost({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        // below the post -> buttons and commments
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Icon(Icons.chat_bubble_outline)),
                  Icon(Icons.share),
                ],
              ),
              const Icon(Icons.bookmark)
            ],
          ),
        ),

        // like by...
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(children: const [
            Text('Liked by '),
            Text(
              'zuck',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(' and '),
            Text(
              'others',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
        ),

        // caption
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: Row(children: const [
              Text(
                'zuckaaaaaaaaaaaaaaaaaaaaaaaaa',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' i turn the dirt they throwing into riches til im filthy')
            ]))
      ],
    );
  }
}

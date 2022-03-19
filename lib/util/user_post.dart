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
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
              ),
              const SizedBox(width: 10),
              Text(name)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}

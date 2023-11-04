import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget navbarIcon = Row(
  children: [
    IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
    IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.video_camera)),
    IconButton(
        onPressed: () {}, icon: const Icon(Icons.notifications_active_rounded)),
    Container(
      width: 25,
      height: 25,
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 50,
        foregroundImage: NetworkImage(
          'https://i.pinimg.com/550x/c4/ab/eb/c4abebfe8f0682058c29d4ab28308648.jpg',
        ),
      ),
    ),
    SizedBox(
      width: 20,
    ),
  ],
);

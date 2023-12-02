import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TabnavbarIcon = Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    // YSearchBar(),
    // SizedBox(
    //   width: screenWidth,
    // ),

    IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.mic,
        color: Colors.white,
      ),
    ),
    SizedBox(
      width: 10,
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(
        CupertinoIcons.video_camera,
        color: Colors.white,
      ),
    ),
    SizedBox(
      width: 10,
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.notifications_active_rounded,
        color: Colors.white,
      ),
    ),
    SizedBox(
      width: 10,
    ),
    CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 15,
      foregroundImage: NetworkImage(
          'https://i.pinimg.com/550x/c4/ab/eb/c4abebfe8f0682058c29d4ab28308648.jpg'),
    ),
    SizedBox(
      width: 10,
    ),
    SizedBox(
      width: 20,
    ),
  ],
);

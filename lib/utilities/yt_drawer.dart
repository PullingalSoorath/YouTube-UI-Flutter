import 'package:flutter/material.dart';

import 'drawer_side_button.dart';
import 'gap_line.dart';
import 'subscription_list.dart';

class YtDrawer extends StatelessWidget {
  const YtDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Color.fromARGB(255, 8, 8, 8),
      child: ListView(
        children: [
          Center(
            child: Container(
              // height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'YouTube',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DrawerSideButton(
              YbtnNme: 'Home',
              icn: Icons.home,
              btnclr: Colors.grey[900],
              btnHvrclr: Colors.grey[800]),
          DrawerSideButton(YbtnNme: 'Shorts', icn: Icons.video_stable_outlined),
          DrawerSideButton(
              YbtnNme: 'Subscription', icn: Icons.subscriptions_outlined),
          GapLine(),
          DrawerSideButton(
              YbtnNme: 'Your Channel', icn: Icons.person_2_outlined),
          DrawerSideButton(YbtnNme: 'History', icn: Icons.history_outlined),
          DrawerSideButton(
              YbtnNme: 'Your Videos', icn: Icons.video_label_sharp),
          DrawerSideButton(YbtnNme: 'Watch Later', icn: Icons.watch_later),
          DrawerSideButton(YbtnNme: 'Downloards', icn: Icons.download_outlined),
          DrawerSideButton(YbtnNme: 'Liked Video', icn: Icons.thumb_up_sharp),
          GapLine(),
          ListTile(
            title: Text(
              'Subscriptions',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SubscriptionList(
            yChnlNme: 'Brototype Malayalam',
          ),
          SubscriptionList(
            yChnlNme: 'Mitch Koko',
          ),
          SubscriptionList(
            yChnlNme: 'The Flutter Way',
          ),
          SubscriptionList(
            yChnlNme: 'Mallu Developer',
          ),
          SubscriptionList(
            yChnlNme: 'The Flutter Way',
          ),
          SubscriptionList(
            yChnlNme: 'Mallu Developer',
          ),
        ],
      ),
    );
  }
}

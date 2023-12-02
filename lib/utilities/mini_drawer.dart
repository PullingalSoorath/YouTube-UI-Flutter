import 'package:flutter/material.dart';

class MiniDrawer extends StatelessWidget {
  const MiniDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 80,
      backgroundColor: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
            ),
            Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.browse_gallery_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Shorts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.subscriptions_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Subscription',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.video_label,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'You',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.download,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Downloards',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

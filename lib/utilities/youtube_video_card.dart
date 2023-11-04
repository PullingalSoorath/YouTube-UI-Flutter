import 'package:flutter/material.dart';

class YoutubeVideoCard extends StatelessWidget {
  final String contTxt;
  final String subcntTxt;
  const YoutubeVideoCard({
    required this.contTxt,
    required this.subcntTxt,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
      child: Card(
        color: Colors.black,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              tileColor: const Color.fromARGB(0, 0, 0, 0),
              title: Text(
                contTxt,
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
              subtitle: Text(
                subcntTxt,
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.w400),
              ),
              mouseCursor: MouseCursor.defer,
              leading: CircleAvatar(
                backgroundColor: Colors.grey[900],
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
    );
  }
}

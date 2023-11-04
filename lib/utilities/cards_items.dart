import 'package:flutter/material.dart';

class CardsItems extends StatelessWidget {
  final dynamic yTitle;

  CardsItems({
    required this.yTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              // scrollDirection: axisDirectionToAxis(AxisDirection.left),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    // height: 200,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 2,
                    // ),
                    // ListTile(
                    //   title: Text("FLUTTER TOUTORIAL PART - 1"),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(yTitle,
                          // "FLUTTER TOUTORIAL PART - 1 \nBROTOTYPE \n116K views 1 day ago ",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      color: Colors.black,
    );
  }
}

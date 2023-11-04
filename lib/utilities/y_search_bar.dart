import 'package:flutter/material.dart';

class YSearchBar extends StatelessWidget {
  final dynamic yWidth;
  final dynamic yWidth2;
  const YSearchBar({
    this.yWidth,
    this.yWidth2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 37,
            width: yWidth2 ?? 340.0,
            color: Colors.grey[900],
          ),
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, right: 55),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey),
                    disabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 0)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      // borderSide: BorderSide.none,
                      borderSide: BorderSide(width: 0),
                    ),
                  ),
                  // enabled: false,
                ),
                height: 35,
                width: yWidth ?? 338,
                color: Colors.black,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              height: 36,
              width: 55,
              // color: Colors.amber,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

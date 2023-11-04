import 'package:flutter/material.dart';

class GapLine extends StatelessWidget {
  const GapLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 6),
      child: Container(
        height: 1,
        color: Colors.grey[900],
      ),
    );
  }
}

var line = Padding(
  padding: const EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 6),
  child: Container(
    height: 1,
    color: Colors.grey[900],
  ),
);

import 'package:flutter/material.dart';

class RowItems extends StatelessWidget {
  final dynamic ywidth;
  final dynamic yheight;
  final dynamic yTxt;
  final Color? yTxtColor;
  final Color? yCntnrColor;
  const RowItems({
    this.yheight,
    this.ywidth,
    this.yTxt,
    this.yTxtColor,
    this.yCntnrColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          alignment: Alignment.center,
          color: yCntnrColor,
          height: yheight,
          width: ywidth,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            child: Text(
              yTxt,
              style: TextStyle(
                  color: yTxtColor ?? Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

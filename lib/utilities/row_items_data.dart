import 'package:flutter/material.dart';
import 'package:youtubeui/utilities/row_items.dart';

class RowItemsData extends StatelessWidget {
  const RowItemsData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: axisDirectionToAxis(AxisDirection.left),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const RowItems(
            yCntnrColor: Color.fromARGB(255, 255, 251, 251),
            yTxtColor: Colors.black,
            yTxt: 'All',
          ),
          RowItems(
            yTxt: 'Flutter',
            yCntnrColor: Colors.grey[900],
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Gaming',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'News',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Place',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Vlogs',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Cars',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Developers',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Subscription',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Samsung',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'LG',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'I Phone',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Bixbi',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'HP',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'GTA',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Grand Rp',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'NFS',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'UI / UX',
          ),
          RowItems(
            yCntnrColor: Colors.grey[900],
            yTxt: 'Yonex',
          ),
          const SizedBox(
            width: 40,
          ),
        ],
      ),
    );
  }
}

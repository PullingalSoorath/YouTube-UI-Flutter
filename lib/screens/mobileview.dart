import 'package:flutter/material.dart';
import 'package:youtubeui/utilities/colors.dart';
import 'package:youtubeui/utilities/navbarIcon.dart';
import 'package:youtubeui/utilities/row_items_data.dart';
import 'package:youtubeui/utilities/ynew_Mobile_Drawer.dart';
import '../utilities/youtube_video_card.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: yBackgroundColor,
        title: const Text(
          'YouTube',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          navbarIcon,
        ],
      ),
      // drawer: YtDrawer(),
      drawer: YtNewMobileDrawer(),

      body: Column(
        children: [
          RowItemsData(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                dynamic wth = MediaQuery.of(context).size.width;
                dynamic mobileWiew = wth < 500 ? 0.0 : 30.0;
                return Padding(
                  padding: EdgeInsets.only(left: mobileWiew, right: mobileWiew),
                  // child: CardsItems(
                  //   yTitle:
                  //       'FLUTTER TOUTORIAL PART - ${index} \nBROTOTYPE \n${index + 432} K views ${index - 30} day ago ',
                  // ),
                  child: YoutubeVideoCard(
                    contTxt: 'FLUTTER TOUTORIAL PART - ${index + 1}',
                    subcntTxt:
                        'BROTOTYPE \n${index * 50 + 432}K views | ${90 - 5 * index} day ago ',
                  ),
                );
              },
            ),
          )
        ],
      ),

      //  ListView.builder(
      //   itemCount: 10,
      //   itemBuilder: (context, index) {
      //     dynamic wth = MediaQuery.of(context).size.width;
      //     dynamic mobileWiew = wth < 500 ? 0.0 : 30.0;
      //     return

      //     Padding(
      //       padding: EdgeInsets.only(left: mobileWiew, right: mobileWiew),
      //       // child: CardsItems(
      //       //   yTitle:
      //       //       'FLUTTER TOUTORIAL PART - ${index} \nBROTOTYPE \n${index + 432} K views ${index - 30} day ago ',
      //       // ),
      //       child: YoutubeVideoCard(
      //         contTxt: 'FLUTTER TOUTORIAL PART - ${index + 1}',
      //         subcntTxt:
      //             'BROTOTYPE \n${index * 50 + 432}K views | ${90 - 5 * index} day ago ',
      //       ),
      //     );
      //   },
      // ),
    );
  }
}

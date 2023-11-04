import 'package:flutter/material.dart';
import 'package:youtubeui/utilities/TabnavbarIcon.dart';
import 'package:youtubeui/utilities/colors.dart';
import 'package:youtubeui/utilities/ynew_Mobile_Drawer.dart';
import '../utilities/mini_drawer.dart';
import '../utilities/row_items_data.dart';
import '../utilities/y_search_bar.dart';
import '../utilities/youtube_video_card.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  double screenWidth = MediaQueryData().size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yBackgroundColor,
      appBar: AppBar(
        backgroundColor: yBackgroundColor,
        // title: const Text(
        //   'YouTube',
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
        title: YSearchBar(yWidth2: 422.0, yWidth: 420.0), centerTitle: true,
        actions: [
          TabnavbarIcon,
        ],
      ),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: TabnavbarIcon,
      // ),
      // drawer: YtDrawer(),
      drawer: YtNewMobileDrawer(),

      body: Row(
        children: [
          MiniDrawer(),
          Expanded(
            child: Column(
              children: [
                RowItemsData(),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 5,
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          // CardsItems(
                          //   yTitle:
                          //       'FLUTTER TOUTORIAL PART - ${index} \nBROTOTYPE \n${index + 432} K views ${index - 30} day ago ',
                          // ),
                          YoutubeVideoCard(
                            contTxt: 'FLUTTER TOUTORIAL PART - ${index + 1}',
                            subcntTxt:
                                'BROTOTYPE \n${index * 50 + 432}K views | ${90 - 5 * index} day ago ',
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

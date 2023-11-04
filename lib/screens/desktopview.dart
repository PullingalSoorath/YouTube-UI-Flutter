import 'package:flutter/material.dart';
import 'package:youtubeui/utilities/TabnavbarIcon.dart';
import 'package:youtubeui/utilities/colors.dart';
import 'package:youtubeui/utilities/mini_drawer.dart';
import 'package:youtubeui/utilities/ynew_Desktop_Drawer.dart';
import '../utilities/row_items_data.dart';
import '../utilities/y_search_bar.dart';
import '../utilities/youtube_video_card.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  bool minDrawer = false; // Initialize minDrawer as false

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yBackgroundColor,
      appBar: AppBar(
        backgroundColor: yBackgroundColor,
        leading: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  // Toggle minDrawer when the button is pressed
                  minDrawer = !minDrawer;
                });
              },
              icon: Icon(Icons.menu),
            ),
          ],
        ),
        title: YSearchBar(yWidth: 440.0, yWidth2: 442.0),
        centerTitle: true,
        actions: [
          TabnavbarIcon,
        ],
      ),
      body: Row(
        children: [
          // YtDesktopDrawer(),
          // Uncomment the desired drawer based on minDrawer

          minDrawer ? MiniDrawer() : YtNewDesktopDrawer(),

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
                    itemCount: 12,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          YoutubeVideoCard(
                            contTxt: 'FLUTTER TUTORIAL PART - ${index + 1}',
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

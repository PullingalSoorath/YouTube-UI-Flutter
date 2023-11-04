import 'package:flutter/material.dart';

import 'gap_line.dart';

class YtNewDesktopDrawer extends StatefulWidget {
  YtNewDesktopDrawer({
    super.key,
  });

  @override
  State<YtNewDesktopDrawer> createState() => _YtNewDesktopDrawerState();
}

class _YtNewDesktopDrawerState extends State<YtNewDesktopDrawer> {
  var line = GapLine().toString();

  List<String> _titleList = [
    'Home',
    'Shorts',
    'Subscriptions',
    'Your Channel',
    'History',
    'Your Videos',
    'Watch Later',
    'Downloards',
    'Liked Vodeos',
    // 'Subscriptions',
    'BROTOTYPE',
    'Mallu Developer',
    'MICH COCO',
    'The Flutter Way',
    'Samsung',
    'Iphone',
    'Grand RP',
    'Far Cry',
  ];

  List<bool> _isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    // false,
  ];

  int count = 0;

  List<Icon> _icons = [
    Icon(Icons.home),
    Icon(Icons.video_stable_outlined),
    Icon(Icons.subscriptions),
    Icon(Icons.person_2_outlined),
    Icon(Icons.history_outlined),
    Icon(Icons.video_label_sharp),
    Icon(Icons.watch_later),
    Icon(Icons.download),
    Icon(Icons.thumb_up_sharp),
    // Icon(
    //   Icons.circle,
    //   size: 0.1,
    // ),
    Icon(Icons.circle),
    Icon(Icons.circle),
    Icon(Icons.circle),
    Icon(Icons.circle),
    Icon(Icons.circle),
    Icon(Icons.circle),
    Icon(Icons.circle),
    Icon(Icons.circle),
  ];

  int _selectedIndex = -1;

  _updateSelectedList(int index) {
    if (_selectedIndex != index) {
      // Unselect the previously selected tile
      if (_selectedIndex != -1) {
        _isSelected[_selectedIndex] = false;
      }

      // Select the tapped tile
      _isSelected[index] = true;

      // _selectedIndex = index;

      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 250,
        backgroundColor: Color.fromARGB(255, 8, 8, 8),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: _titleList.length,
                separatorBuilder: (context, index) {
                  if (index == 2) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 1,
                            color: Colors.grey[700],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                              "Yours",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    );
                  } else if (index == 8) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 1,
                            color: Colors.grey[700],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Subscriptions",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      height: 0,
                    );
                  }
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 5, bottom: 2.5, top: 3),
                    child: Container(
                      height: 44,
                      child: ListTile(
                        hoverColor: Colors.grey[700],
                        leading: _icons[index],
                        iconColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        title: Text(
                          _titleList[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        selectedColor: Colors.white,
                        selectedTileColor: Colors.grey[800],
                        selected: _isSelected[index],
                        onTap: () {
                          _updateSelectedList(index);
                          setState(() {
                            _selectedIndex = index; // Update the selected index
                          });
                          // _selectedIndex = index;
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        )

        //  ListView.builder(
        //   itemCount: _titleList.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 44,
        //       child: Padding(
        //         padding: const EdgeInsets.only(left: 10, right: 10),
        //         child: ListTile(
        //           hoverColor: Colors.grey[700],
        //           leading: _icons[index],
        //           iconColor: Colors.white,
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(12)),
        //           title: Text(
        //             _titleList[index],
        //             style: TextStyle(color: Colors.white),
        //           ),
        //           selectedColor: Colors.white,
        //           selectedTileColor: Colors.grey[800],
        //           selected: _isSelected[index],
        //           onTap: () {
        //             _updateSelectedList(index);
        //             setState(() {
        //               _selectedIndex = index; // Update the selected index
        //             });
        //             // _selectedIndex = index;
        //           },
        //         ),
        //       ),
        //     );
        //   },
        // ),
        );
  }
}

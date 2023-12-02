import 'package:flutter/material.dart';

import 'gap_line.dart';

class YtNewMobileDrawer extends StatefulWidget {
  YtNewMobileDrawer({
    super.key,
  });

  @override
  State<YtNewMobileDrawer> createState() => _YtNewMobileDrawerState();
}

class _YtNewMobileDrawerState extends State<YtNewMobileDrawer> {
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
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Container(
                  // height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'YouTube',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _titleList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, bottom: 2.5, top: 2.5),
                          child: Container(
                            height: 44,
                            child: ListTile(
                              hoverColor: Colors.grey[700],
                              leading: Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: _icons[index],
                              ),
                              iconColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  _titleList[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              selectedColor: Colors.white,
                              selectedTileColor: Colors.grey[800],
                              selected: _isSelected[index],
                              onTap: () {
                                _updateSelectedList(index);
                                setState(() {
                                  _selectedIndex =
                                      index; // Update the selected index
                                });
                                // _selectedIndex = index;
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
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

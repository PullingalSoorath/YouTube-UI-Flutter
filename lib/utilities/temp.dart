import 'package:flutter/material.dart';

class MyListData extends StatefulWidget {
  const MyListData({super.key});

  @override
  State<MyListData> createState() => _MyListDataState();
}

class _MyListDataState extends State<MyListData> {
  
  List<String> _titleList = [
    'Home',
    'Shorts',
    'Subtitle',
    'Library',
    'History',
    'Your Videos',
  ];

  List<bool> _isSelected = [
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
    Icon(Icons.library_add),
    Icon(Icons.video_camera_back),
    Icon(Icons.home),
    Icon(Icons.library_add),
    Icon(Icons.video_camera_back),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('L I S T'),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            color: Colors.black,
          );
        },
        itemCount: _titleList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: _icons[index],
            title: Text(
              _titleList[index],
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.grey[800],
            selected: _isSelected[index],
            onTap: () {
              _updateSelectedList(index);
              setState(() {
                _selectedIndex = index; // Update the selected index
              });
            },
          );
        },
      ),
    );
  }



  int _selectedIndex = -1;



  _updateSelectedList(int index) {
    if (_selectedIndex != index) {
      // Unselect the previously selected tile
      if (_selectedIndex != -1) {
        _isSelected[_selectedIndex] = false;
      }

      // Select the tapped tile
      _isSelected[index] = true;

      setState(() {
        _selectedIndex = index;
      });
    }
  }
}

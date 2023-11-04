import 'package:flutter/material.dart';

class SubscriptionList extends StatelessWidget {
  final String yChnlNme;

  const SubscriptionList({
    required this.yChnlNme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 6),
      child: Container(
        height: 44,
        child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onTap: () {},
          hoverColor: Colors.grey[900],
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 12,
          ),
          title: Text(
            yChnlNme,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

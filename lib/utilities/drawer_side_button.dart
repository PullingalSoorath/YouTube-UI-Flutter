import 'package:flutter/material.dart';

class DrawerSideButton extends StatelessWidget {
  final String YbtnNme;
  final IconData icn;
  final Color? btnclr;
  final Color? btnHvrclr;
  const DrawerSideButton({
    required this.YbtnNme,
    required this.icn,
    this.btnclr,
    this.btnHvrclr,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
              height: 44,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                hoverColor: btnHvrclr ?? Colors.grey[900],
                onTap: () {},
                // titleAlignment: ListTileTitleAlignment.top,
                tileColor: btnclr ?? Color.fromARGB(255, 8, 8, 8),
                title: Text(YbtnNme),
                leading: Icon(icn),
                iconColor: Colors.white,
                titleTextStyle: TextStyle(color: Colors.white),
              )

              // ElevatedButton.icon(
              //   style: ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll(
              //           btnclr ?? Color.fromARGB(255, 8, 8, 8))),
              //   onPressed: () {},
              //   icon: Icon(icn),
              //   label: Text(YbtnNme),
              // ),
              ),
        ),
      ),
    );
  }
}

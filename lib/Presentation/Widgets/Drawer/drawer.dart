import 'package:flutter/material.dart';

class DrawerWidgets extends StatelessWidget {
  const DrawerWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DrawerHeader(
            child: Column(
          children: [
            CircleAvatar(
              radius: 50,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text('App Name'),
            )
          ],
        )),
        ListTile(
          title: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Sale',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(
          indent: 30,
          endIndent: 30,
        ),
        ListTile(
          title: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Purchase',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(
          indent: 30,
          endIndent: 30,
        ),
        ListTile(
          title: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Accounts',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(
          indent: 30,
          endIndent: 30,
        ),
        ListTile(
          title: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Stocks',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}

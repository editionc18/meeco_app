import 'package:flutter/material.dart';

class NotiItem extends StatefulWidget {
  @override
  _NotiItemState createState() => _NotiItemState();
}

class _NotiItemState extends State<NotiItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Icon(Icons.account_circle),
            SizedBox(
              width: 8,
            ),
            Text('테스트 알림'),
          ],
        ),
      ),
    );
  }
}

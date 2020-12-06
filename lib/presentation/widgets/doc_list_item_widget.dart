import 'package:flutter/material.dart';

class DocListItemWidget extends StatefulWidget {
  @override
  _DocListItemWidgetState createState() => _DocListItemWidgetState();
}

class _DocListItemWidgetState extends State<DocListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Text('제목'),
                Text('닉네임'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.check),
                Icon(Icons.mode_comment),
                Icon(Icons.favorite),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('100'),
                Text('10'),
                Text('1'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 3.0,
              spreadRadius: 3.0,
              offset: Offset(0.0, 3.0),
            )
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '제목',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text('닉네임'),
                      Text(
                        ' · ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('8분 전'),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.check,
                  size: 15,
                ),
                SizedBox(height: 5.0),
                Icon(
                  Icons.mode_comment,
                  size: 15,
                ),
                SizedBox(height: 5.0),
                Icon(
                  Icons.favorite,
                  size: 15,
                ),
              ],
            ),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '100',
                  style: TextStyle(),
                ),
                SizedBox(height: 5.0),
                Text(
                  '10',
                  style: TextStyle(),
                ),
                SizedBox(height: 5.0),
                Text(
                  '1',
                  style: TextStyle(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

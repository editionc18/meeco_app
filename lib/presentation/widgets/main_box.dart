import 'package:flutter/material.dart';

class MainBox extends StatefulWidget {
  final String title;
  final List<Color> colors;

  MainBox({this.title, this.colors});

  @override
  _MainBoxState createState() => _MainBoxState();
}

class _MainBoxState extends State<MainBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: widget.colors ??
                  [
                    Colors.red,
                    Colors.orange,
                  ],
              stops: [0.65, 1.0]),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            MainBoxItem(title: '제목'),
            MainBoxItem(title: '제목제목'),
            MainBoxItem(title: '미코미코미'),
            MainBoxItem(title: '제목제목제목'),
          ],
        ),
      ),
    );
  }
}

class MainBoxItem extends StatefulWidget {
  final String title;

  MainBoxItem({this.title});

  @override
  _MainBoxItemState createState() => _MainBoxItemState();
}

class _MainBoxItemState extends State<MainBoxItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color(0xffefefef).withOpacity(0.8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

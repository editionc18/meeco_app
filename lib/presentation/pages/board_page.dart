import 'package:flutter/material.dart';
import 'package:meeco_app/presentation/pages/doc_list_page.dart';
import 'package:meeco_app/presentation/widgets/main_box.dart';

class BoardPage extends StatefulWidget {
  @override
  _BoardPageState createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        GestureDetector(
          child: MainBox(
            title: 'IT+',
            colors: [
              Color(0xff647cab),
              Color(0xff647cab),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DocListPage(),
              ),
            );
          },
        ),
        MainBox(
          title: '자유+',
          colors: [
            Color(0xff69b395),
            Color(0xff69b395),
          ],
        ),
        MainBox(
          title: '모아보기',
          colors: [
            Color(0xfffa7570),
            Color(0xfffa7570),
          ],
        ),
      ],
    );
  }
}

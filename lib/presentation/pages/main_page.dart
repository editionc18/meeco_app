import 'package:flutter/material.dart';

import 'package:meeco_app/presentation/widgets/main_box.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '미니기기 코리아',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 500,
              child: PageView(
                controller: PageController(
                  viewportFraction: 0.8,
                  initialPage: 0,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MainBox(
                      title: 'IT+',
                      colors: [
                        Color(0xFF647cab),
                        Color(0xFF647cab),
                        // Color(0xFF4d5f87),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MainBox(
                      title: '자유+',
                      colors: [
                        Color(0xff69b395),
                        Color(0xff69b395),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MainBox(title: '모아보기', colors: [
                      Color(0xfffa7570),
                      Color(0xfffa7570),
                    ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '메뉴',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

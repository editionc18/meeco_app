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
        title: Text(
          '미니기기 코리아',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
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
              height: 260,
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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.developer_board,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

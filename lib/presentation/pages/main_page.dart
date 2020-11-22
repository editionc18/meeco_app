import 'package:flutter/material.dart';

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
      body: ListView(
        shrinkWrap: true,
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
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   shrinkWrap: true,
          //   children: [
          //     Container(
          //       color: Colors.blue,
          //       height: 150,
          //       width: 100,
          //     ),
          //     Container(
          //       color: Colors.green,
          //       height: 150,
          //       width: 100,
          //     ),
          //     Container(
          //       color: Colors.red,
          //       height: 150,
          //       width: 100,
          //     ),
          //   ],
          // ),
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
    );
  }
}

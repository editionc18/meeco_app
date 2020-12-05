import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:meeco_app/presentation/bloc/tabs/tabs.dart';
import 'package:meeco_app/presentation/bloc/tabs/tabs_event.dart';
import 'package:meeco_app/presentation/bloc/tabs/tabs_bloc.dart';

import 'package:meeco_app/presentation/widgets/main_box.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabsBloc, Tabs>(builder: (context, activeTab) {
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
        body: activeTab == Tabs.boards
            ? MainBox(title: 'IT+')
            : activeTab == Tabs.notis
                ? MainBox(title: 'dddd')
                : activeTab == Tabs.userInfo
                    ? MainBox(title: 'ddddddd')
                    : MainBox(title: 'title'),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            BlocProvider.of<TabsBloc>(context).add(
              TabsChanged(Tabs.values[index]),
            );
          },
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
    });
  }
}

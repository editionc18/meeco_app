import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:meeco_app/presentation/pages/main_page.dart';
import 'package:meeco_app/presentation/bloc/tabs/tabs_bloc.dart';

void main() {
  runApp(
    BlocProvider<TabsBloc>(
      create: (context) => TabsBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

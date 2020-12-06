import 'package:flutter/material.dart';
import 'package:meeco_app/presentation/widgets/noti_item.dart';

class NotiPage extends StatefulWidget {
  @override
  _NotiPageState createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [NotiItem()],
    );
  }
}

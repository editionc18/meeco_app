import 'package:flutter/material.dart';

class DocListPage extends StatefulWidget {
  @override
  _DocListPageState createState() => _DocListPageState();
}

class _DocListPageState extends State<DocListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff647cab),
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text('IT+'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_upward,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

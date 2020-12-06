import 'package:flutter/material.dart';

class DocPage extends StatefulWidget {
  @override
  _DocPageState createState() => _DocPageState();
}

class _DocPageState extends State<DocPage> {
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

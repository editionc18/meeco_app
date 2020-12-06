import 'package:flutter/material.dart';
import 'package:meeco_app/presentation/widgets/doc_list_item_widget.dart';

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
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) => DocListItemWidget(),
      ),
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeco_app/presentation/bloc/doc_list/doc_list_bloc.dart';
import 'package:meeco_app/presentation/bloc/doc_list/doc_list_states.dart';
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
      body: BlocBuilder<DocListBloc, DocListState>(
        builder: (context, state) {
          if (state is DocListFetchSuccess) {
            return ListView.builder(
              itemCount: state.docList.docListItems.length,
              itemBuilder: (context, i) => DocListItemWidget(
                title: state.docList.docListItems[i].title,
                author: state.docList.docListItems[i].author,
                view: state.docList.docListItems[i].view,
                comment: state.docList.docListItems[i].comment,
                vote: state.docList.docListItems[i].vote,
              ),
            );
          }
        },
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

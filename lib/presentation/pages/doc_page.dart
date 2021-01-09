import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeco_app/presentation/bloc/doc/doc_bloc.dart';
import 'package:meeco_app/presentation/bloc/doc/doc_states.dart';

class DocPage extends StatefulWidget {
  @override
  _DocPageState createState() => _DocPageState();
}

class _DocPageState extends State<DocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: BlocBuilder<DocBloc, DocState>(
        builder: (context, state) {
          if (state is DocInitial) {
            return Container();
          } else if (state is DocFetchSuccess) {
            return ListView(
              children: [
                Text(
                  state.document.title,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(state.document.nickname),
                Text(state.document.timestamp),
                Text(state.document.view.toString()),
                Text(state.document.content),
                Text(state.document.vote.toString()),
              ],
            );
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeco_app/presentation/bloc/doc/doc_bloc.dart';
import 'package:meeco_app/presentation/bloc/doc/doc_events.dart';
import 'package:meeco_app/presentation/bloc/doc/doc_states.dart';
import 'package:meeco_app/presentation/pages/doc_page.dart';

class DocListItemWidget extends StatefulWidget {
  final String title;
  final String author;

  final int view;
  final int comment;
  final int vote;

  DocListItemWidget({
    this.title,
    this.author,
    this.view,
    this.comment,
    this.vote,
  });

  @override
  _DocListItemWidgetState createState() => _DocListItemWidgetState();
}

class _DocListItemWidgetState extends State<DocListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocBloc, DocState>(builder: (context, state) {
      return GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 3.0,
                  spreadRadius: 3.0,
                  offset: Offset(0.0, 3.0),
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Row(
                        children: [
                          Text(widget.author),
                          Text(
                            ' · ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('8분 전'),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.check,
                      size: 15,
                    ),
                    SizedBox(height: 5.0),
                    Icon(
                      Icons.mode_comment,
                      size: 15,
                    ),
                    SizedBox(height: 5.0),
                    Icon(
                      Icons.favorite,
                      size: 15,
                    ),
                  ],
                ),
                SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.view.toString(),
                      style: TextStyle(),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      widget.comment.toString(),
                      style: TextStyle(),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      widget.vote.toString(),
                      style: TextStyle(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          BlocProvider.of<DocBloc>(context)
              .add(GetDocument(query: '/FreePlus/30748971'));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DocPage(),
            ),
          );
        },
      );
    });
  }
}

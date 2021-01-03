import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeco_app/presentation/bloc/doc_list/doc_list_bloc.dart';
import 'package:meeco_app/presentation/bloc/doc_list/doc_list_events.dart';
import 'package:meeco_app/presentation/bloc/doc_list/doc_list_states.dart';

class MainBox extends StatefulWidget {
  final String title;
  final List<Color> colors;

  MainBox({this.title, this.colors});

  @override
  _MainBoxState createState() => _MainBoxState();
}

class _MainBoxState extends State<MainBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: widget.colors ??
                    [
                      Colors.red,
                      Colors.orange,
                    ],
                stops: [0.65, 1.0]),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              BlocBuilder<DocListBloc, DocListState>(
                builder: (context, state) {
                  if (state is DocListInitial) {
                    return IconButton(
                        icon: Icon(Icons.touch_app),
                        onPressed: () {
                          BlocProvider.of<DocListBloc>(context)
                              .add(GetMoreList(name: 'ITplus'));
                        });
                  }
                  if (state is DocListFetchSuccess) {
                    return Column(
                      children: [
                        IconButton(
                            icon: Icon(Icons.touch_app),
                            onPressed: () {
                              BlocProvider.of<DocListBloc>(context)
                                  .add(GetMoreList(name: 'ITplus'));
                            }),
                        ...state.docList.docListItems
                            .map((e) =>
                                MainBoxItem(title: e.isNotice ? '공지' : e.title))
                            .toList(),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ));
  }
}

class MainBoxItem extends StatefulWidget {
  final String title;

  MainBoxItem({this.title});

  @override
  _MainBoxItemState createState() => _MainBoxItemState();
}

class _MainBoxItemState extends State<MainBoxItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color(0xffefefef).withOpacity(0.8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

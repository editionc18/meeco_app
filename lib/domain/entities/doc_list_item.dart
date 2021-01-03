import 'package:equatable/equatable.dart';

class DocListItem extends Equatable {
  final String query;

  final String title;
  final String author;

  final int view;
  final int comment;
  final int vote;

  final bool isNotice;

  DocListItem({
    this.query,
    this.title,
    this.author,
    this.view,
    this.comment,
    this.vote,
    this.isNotice,
  });

  @override
  List<Object> get props => [
        query,
        title,
        author,
        view,
        comment,
        vote,
      ];
}

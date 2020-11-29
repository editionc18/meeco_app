import 'package:equatable/equatable.dart';

class DocListItem extends Equatable {
  final String query;

  final String title;
  final String author;

  final int view;
  final int comment;
  final int vote;

  DocListItem(
      {this.query,
      this.title,
      this.author,
      this.view,
      this.comment,
      this.vote});

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

import 'package:equatable/equatable.dart';
import 'package:meeco_app/domain/entities/comment.dart';

class Document extends Equatable {
  final String title;

  final String nickname;

  final int view;
  final int vote;
  final int commentNum;

  final List<Comment> comments;

  final String timestamp;

  final String sign;
  final String content;

  Document({
    this.title,
    this.nickname,
    this.view,
    this.vote,
    this.commentNum,
    this.comments,
    this.timestamp,
    this.sign,
    this.content,
  });

  @override
  List<Object> get props => [
        title,
        nickname,
        view,
        vote,
        commentNum,
        comments,
        timestamp,
        sign,
        content,
      ];
}

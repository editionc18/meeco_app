import 'package:equatable/equatable.dart';

class Comment extends Equatable {
  final String nickname;
  final int rank;
  final bool isBest;
  final String time;
  final String content;
  final int vote;
  final List<Comment> subcomments;

  Comment({
    this.nickname,
    this.rank,
    this.isBest,
    this.time,
    this.content,
    this.vote,
    this.subcomments,
  });

  @override
  List<Object> get props => [
        nickname,
        rank,
        isBest,
        time,
        content,
        vote,
        subcomments,
      ];
}

import 'package:meeco_app/domain/entities/comment.dart';

class CommentModel extends Comment {
  CommentModel({
    String nickname,
    int rank,
    bool isBest,
    String time,
    String content,
    int vote,
    List<CommentModel> subcomments,
  }) : super(
          nickname: nickname,
          rank: rank,
          isBest: isBest,
          time: time,
          content: content,
          vote: vote,
          subcomments: subcomments,
        );
}

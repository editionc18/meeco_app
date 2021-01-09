import 'package:meeco_app/domain/entities/comment.dart';
import 'package:meeco_app/domain/entities/document.dart';

class DocumentModel extends Document {
  DocumentModel({
    String title,
    String nickname,
    int view,
    int vote,
    int commentNum,
    List<Comment> comments,
    String timestamp,
    String sign,
    String content,
  }) : super(
          title: title,
          nickname: nickname,
          view: view,
          vote: vote,
          commentNum: commentNum,
          comments: comments,
          timestamp: timestamp,
          sign: sign,
          content: content,
        );
}

import 'package:meeco_app/domain/entities/doc_list_item.dart';

class DocListItemModel extends DocListItem {
  DocListItemModel({
    String query,
    String title,
    String author,
    int view,
    int comment,
    int vote,
    bool isNotice,
  }) : super(
          query: query,
          title: title,
          author: author,
          view: view,
          comment: comment,
          vote: vote,
          isNotice: isNotice,
        );
}

import 'package:meeco_app/data/models/doc_list_item_model.dart';
import 'package:meeco_app/domain/entities/doc_list.dart';

class DocListModel extends DocList {
  DocListModel({
    String name,
    List<DocListItemModel> docListItems,
  }) : super(
          name: name,
          docListItems: docListItems,
        );
}

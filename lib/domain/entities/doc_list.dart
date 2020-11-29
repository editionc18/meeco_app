import 'package:equatable/equatable.dart';

import 'package:meeco_app/domain/entities/doc_list_item.dart';

class DocList extends Equatable {
  final String name;

  final List<DocListItem> docListItems;

  DocList({
    this.name,
    this.docListItems,
  });

  @override
  List<Object> get props => [
        name,
        docListItems,
      ];
}

import 'package:equatable/equatable.dart';
import 'package:meeco_app/domain/entities/doc_list.dart';

abstract class DocListState extends Equatable {
  const DocListState();

  @override
  List<Object> get props => [];
}

class DocListInitial extends DocListState {}

class DocListFetchSuccess extends DocListState {
  final String name;
  final DocList docList;

  const DocListFetchSuccess({
    this.name,
    this.docList,
  });

  @override
  List<Object> get props => [];
}

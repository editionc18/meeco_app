import 'package:equatable/equatable.dart';

abstract class DocListEvent extends Equatable {
  const DocListEvent();

  @override
  List<Object> get props => [];
}

class GetMoreList extends DocListEvent {
  final String name;

  GetMoreList({
    this.name,
  });

  @override
  List<Object> get props => [
        name,
      ];
}

import 'package:equatable/equatable.dart';

abstract class DocEvent extends Equatable {
  const DocEvent();

  @override
  List<Object> get props => [];
}

class GetDocument extends DocEvent {
  final String query;

  GetDocument({
    this.query,
  });

  @override
  List<Object> get props => [
        query,
      ];
}

import 'package:equatable/equatable.dart';

class Document extends Equatable {
  final String title;

  Document({
    this.title,
  });

  @override
  List<Object> get props => [
        title,
      ];
}

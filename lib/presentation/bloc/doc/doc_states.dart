import 'package:equatable/equatable.dart';
import 'package:meeco_app/domain/entities/document.dart';

abstract class DocState extends Equatable {
  const DocState();

  List<Object> get props => [];
}

class DocInitial extends DocState {}

class DocFetchSuccess extends DocState {
  final Document document;

  const DocFetchSuccess({
    this.document,
  });

  @override
  List<Object> get props => [];
}

import 'package:meta/meta.dart';

import 'package:meeco_app/data/datasources/remote_data_source.dart';
import 'package:meeco_app/domain/entities/document.dart';
import 'package:meeco_app/domain/entities/doc_list.dart';
import 'package:meeco_app/data/models/response.dart';
import 'package:meeco_app/domain/repositories/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource remote;

  RepositoryImpl({@required this.remote});

  @override
  Future<Document> getDoc(String query) {
    // TODO: implement getDoc
  }

  @override
  Future<DocList> getDocList(String query) async =>
      await remote.getDocList(query);

  @override
  Future<Response> login(String id, String pw) {
    // TODO: implement login
  }

  @override
  void logout() {
    // TODO: implement logout
  }
}

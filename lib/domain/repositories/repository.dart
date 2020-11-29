import 'package:meeco_app/data/models/response.dart';

import 'package:meeco_app/domain/entities/doc_list.dart';
import 'package:meeco_app/domain/entities/document.dart';

abstract class Repository {
  Future<Response> login(String id, String pw);
  void logout();

  Future<Document> getDoc(String query);
  Future<DocList> getDocList(String query);
}

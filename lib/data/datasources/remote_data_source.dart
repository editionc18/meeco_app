import 'package:html/parser.dart' show parse;

import 'package:meeco_app/data/models/response.dart';

import 'package:meeco_app/data/client/meeco_client.dart';
import 'package:meeco_app/data/models/doc_list_model.dart';

abstract class RemoteDataSource {
  Future<DocListModel> getDocList(String query);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  MeecoClient meecoClient;

  RemoteDataSourceImpl({MeecoClient meecoClient})
      : this.meecoClient = meecoClient ?? MeecoClient();

  @override
  Future<DocListModel> getDocList(String query) async {
    var response = await meecoClient.get(query);
    var document = parse(response.body);
    var list = document.querySelector('#bBd > div.bBox > div');
  }
}

import 'package:html/parser.dart' show parse;
import 'package:meeco_app/data/models/doc_list_item_model.dart';

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
    final Response response = await meecoClient.get(query);
    final document = parse(response.body);
    var list =
        document.querySelector('#bBd > div.bBox > div').text ?? 'didididi';
    return DocListModel(name: 'IT+', docListItems: [
      DocListItemModel(
        query: '/ITplus/202020202',
        title: '${list}',
        author: '김따란',
        view: 100,
        comment: 10,
        vote: 1,
      ),
      DocListItemModel(
        query: '/ITplus/202020202',
        title: '제목 테스트',
        author: '김따란',
        view: 100,
        comment: 10,
        vote: 1,
      ),
      DocListItemModel(
        query: '/ITplus/202020202',
        title: '제목 테스트',
        author: '김따란',
        view: 100,
        comment: 10,
        vote: 1,
      ),
    ]);
    // return list.text;
  }
}

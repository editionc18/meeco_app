import 'package:html/parser.dart' show parse;
import 'package:meeco_app/data/models/comment_model.dart';
import 'package:meeco_app/data/models/doc_list_item_model.dart';
import 'package:meeco_app/data/models/document_model.dart';

import 'package:meeco_app/data/models/response.dart';

import 'package:meeco_app/data/client/meeco_client.dart';
import 'package:meeco_app/data/models/doc_list_model.dart';

abstract class RemoteDataSource {
  Future<DocListModel> getDocList(String query);
  Future<DocumentModel> getDoc(String query);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  MeecoClient meecoClient;

  RemoteDataSourceImpl({MeecoClient meecoClient})
      : this.meecoClient = meecoClient ?? MeecoClient();

  @override
  Future<DocListModel> getDocList(String query) async {
    final Response response =
        await meecoClient.get(query) ?? Response('<hello>what</hello>');
    final document = parse(response.body);
    // document
    //     .querySelector(
    //         'html > body > section.cCtn > div.wrapper > section.cCon > div.bBd > div.bBox > div.ldn-wrap > table.ldn > tbody > tr')
    //     ?.children
    //     ?.forEach((element) {
    //   print(
    //       'item is $element, class is ${element?.className}, text is ${element?.text?.trim()}');
    // });
    var list = document.querySelectorAll('table.ldn > tbody > tr');
    return DocListModel(
      name: 'IT+',
      docListItems: list.map((e) {
        var comment = e.querySelector('td.title > a.num')?.text;
        var data = e.querySelectorAll('td.num');
        return DocListItemModel(
            query: e
                .querySelector('td.title > a > span')
                .parent
                .attributes['href'],
            title: e.querySelector('td.title > a > span').text.trim(),
            author: e.querySelector('td.author > a').text,
            view: int.parse(data[3].text),
            comment: int.parse(
                comment?.trim()?.substring(1, comment.trim().length - 1) ??
                    '0'),
            vote: int.parse(data[2].text),
            isNotice: e.className == 'notice');
      }).toList(),
    );
    // return list.text;
  }

  @override
  Future<DocumentModel> getDoc(String query) async {
    final Response response = await meecoClient.get(query);
    final document = parse(response.body).querySelector(
        'html > body > section.cCtn > div.wrapper > section.cCon > div.bBd > article.bAtc');

    return DocumentModel(
      title: document.querySelector('header.atc-hd > h1.atc-title > a').text,
      nickname: document
          .querySelector('header.atc-hd > ul.ldd-title-under > li > a')
          .text,
      timestamp: document
          .querySelector('header.atc-hd > ul.ldd-title-under > li.num')
          .text,
      view: int.parse(document
          .querySelector('header.atc-hd > ul.ldd-title-under > li > span.num')
          .text),
      content: document.querySelector('div.atc-wrap > div.xe_content').text,
      vote: int.parse(document
          .querySelector(
              'div.atc-wrap > div.atc-vote > div.atc-vote-bts > a > span.num')
          .text),
      sign: document
          .querySelector('div.atc-wrap > div.atc-sign > div.atc-sign-body')
          .toString(),
    );
  }
}

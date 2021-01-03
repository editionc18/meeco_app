import 'package:bloc/bloc.dart';
import 'package:meeco_app/domain/usecases/get_doc_list.dart';

import 'package:meeco_app/presentation/bloc/doc_list/doc_list_events.dart';
import 'package:meeco_app/presentation/bloc/doc_list/doc_list_states.dart';

class DocListBloc extends Bloc<DocListEvent, DocListState> {
  GetDocList getDocList;
  DocListBloc({this.getDocList}) : super(DocListInitial());

  @override
  Stream<DocListState> mapEventToState(DocListEvent event) async* {
    if (event is GetMoreList) {
      var docList = await getDocList.repository.getDocList('/ITplus');
      yield DocListFetchSuccess(
        name: docList.name,
        docList: docList,
      );
    }
  }
}

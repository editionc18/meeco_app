import 'package:bloc/bloc.dart';
import 'package:meeco_app/domain/usecases/get_doc.dart';
import 'package:meeco_app/presentation/bloc/doc/doc_events.dart';
import 'package:meeco_app/presentation/bloc/doc/doc_states.dart';

class DocBloc extends Bloc<DocEvent, DocState> {
  GetDoc getDoc;
  DocBloc({this.getDoc}) : super(DocInitial());

  @override
  Stream<DocState> mapEventToState(DocEvent event) async* {
    if (event is GetDocument) {
      var document = await getDoc.repository.getDoc('/FreePlus/30748971');
      yield DocFetchSuccess(document: document);
    }
  }
}

import 'package:bloc/bloc.dart';

import 'package:meeco_app/presentation/bloc/tabs/tabs.dart';
import 'package:meeco_app/presentation/bloc/tabs/tabs_event.dart';

class TabsBloc extends Bloc<TabsEvent, Tabs> {
  TabsBloc() : super(Tabs.boards);

  @override
  Stream<Tabs> mapEventToState(TabsEvent event) async* {
    if (event is TabsChanged) {
      yield event.tabs;
    }
  }
}

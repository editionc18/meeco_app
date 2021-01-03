import 'package:equatable/equatable.dart';

import 'package:meeco_app/presentation/bloc/tabs/tabs.dart';

abstract class TabsEvent extends Equatable {
  const TabsEvent();

  @override
  List<Object> get props => [];
}

class TabsChanged extends TabsEvent {
  final Tabs tabs;

  const TabsChanged(this.tabs);

  @override
  List<Object> get props => [
        tabs,
      ];
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeco_app/domain/usecases/get_doc.dart';
import 'package:meeco_app/presentation/bloc/doc/doc_bloc.dart';

import 'package:meeco_app/presentation/pages/main_page.dart';
import 'package:meeco_app/presentation/bloc/tabs/tabs_bloc.dart';

import 'package:meeco_app/data/datasources/remote_data_source.dart';
import 'package:meeco_app/data/repositories/repository_impl.dart';
import 'package:meeco_app/domain/repositories/repository.dart';
import 'package:meeco_app/domain/usecases/get_doc_list.dart';

import 'package:meeco_app/presentation/pages/main_page.dart';
import 'package:meeco_app/presentation/bloc/doc_list/doc_list_bloc.dart';

void main() {
  Repository _repository = RepositoryImpl(remote: RemoteDataSourceImpl());
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<DocListBloc>(
        create: (context) => DocListBloc(
          getDocList: GetDocList(_repository),
        ),
      ),
      BlocProvider<TabsBloc>(
        create: (context) => TabsBloc(),
      ),
      BlocProvider<DocBloc>(
        create: (context) => DocBloc(
          getDoc: GetDoc(_repository),
        ),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

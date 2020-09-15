import 'package:bloc_pattern/CounterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'CounterBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MultiBlocProvider(
          providers: [BlocProvider<CounterBloc>(create: (context) => CounterBloc())],
          child: CounterPage(),
        ),
      );
}

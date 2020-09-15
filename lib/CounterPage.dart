import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';

import 'CounterBloc.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  CounterBloc counterBloc;

  @override
  Widget build(BuildContext context) {
    counterBloc ??= BlocProvider.of<CounterBloc>(context);
    log.call("Counter",name:"CounterPageState",);
    return Scaffold(
        appBar: AppBar(title: Text('Counter')),
        body: BlocBuilder<CounterBloc, int>(builder: (context, count) => counterBloc.myView.text(count)),
        floatingActionButton: counterBloc.myView.floatingActionButtonWidgets(counterBloc));
  }

  @override
  void dispose() {
    super.dispose();
    counterBloc.close();
  }
}

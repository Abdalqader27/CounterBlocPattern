import 'dart:developer';

import 'package:bloc_pattern/CounterBloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen {

  Widget floatingActionButtonWidgets(counterBloc) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                counterBloc.add(CounterEvent.increment);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                counterBloc.add(CounterEvent.decrement);
              },
            ),
          ),
        ],
      );

  Widget text(count) => Center(
        child: Text(
          '$count',
          style: TextStyle(fontSize: 24.0),
        ),
      );
}

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_pattern/CounterScreen.dart';
enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  //View
  final myView = CounterScreen();

  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;// return
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
}

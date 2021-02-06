import 'package:bloc/bloc.dart';

import 'DataEvent.dart';
import 'DataState.dart';

class CounterBloc extends Bloc<DataEvent, DataState> {
  int count = 0;

  @override
  // TODO: implement initialState
  DataState get initialState => Success(count);

  @override
  Stream<DataState> mapEventToState(DataEvent event) async* {

    if (event is Increment) {
      yield Loading();
      await Future.delayed(Duration(seconds: 1));
      count++;
      yield Success(count);
    }

    if (event is Decrement) {
      yield Loading();
      await Future.delayed(Duration(seconds: 1));
      count--;
      yield Success(count);
    }

  }
}
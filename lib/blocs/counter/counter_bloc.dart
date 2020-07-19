import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/blocs/blocs.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;

  CounterBloc(CounterState initialState) : super(initialState);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      count += 1;
      yield CounterDisplayState(count: count);
    } else if (event is DecrementEvent) {
      count -= 1;
      yield CounterDisplayState(count: count);
    }
  }
}

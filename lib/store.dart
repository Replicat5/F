
import 'package:mobx/mobx.dart';
part 'store.g.dart';

class Counter = _CounterStore with _$Counter ;

abstract class _CounterStore with Store {
  @observable
  int _counter = 0;

 
    @action 
  void increment (){
    _counter++ ;
  }
  
  void decrement (){
    _counter--;
  }

  int isCounter(){
    return _counter;
  }






 
}

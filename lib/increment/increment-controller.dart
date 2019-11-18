import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class IncrementController implements BlocBase{

  var _counterController = BehaviorSubject<int>.seeded(0);

  //output
  Stream<int> get outCounter => _counterController.stream;
  //input
  Sink<int> get inCounter => _counterController.sink;

  void increment(){
    inCounter.add(_counterController.value+1);
  }

    void decrement(){
    inCounter.add(_counterController.value-1);
  }

  @override
  void addListener(listener) {
    // TODO: implement addListener
  }

  @override
  void dispose() {
    _counterController.close();
  }

  @override
  // TODO: implement hasListeners
  bool get hasListeners => null;

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
  }

  @override
  void removeListener(listener) {
    // TODO: implement removeListener
  }

}
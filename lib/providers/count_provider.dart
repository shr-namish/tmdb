import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final personName = Provider((ref) => 'Hello Bhunti');
final countProvider = ChangeNotifierProvider((ref) => CountProvider());

class CountProvider extends ChangeNotifier {
  int number = 0;

  void increment(){
    number++;
    notifyListeners();
  }

  void decrement() {
    number--;
    notifyListeners();
  }

}
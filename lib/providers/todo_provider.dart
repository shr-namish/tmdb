import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/todo.dart';


List<Todo> todos = [
  Todo(label: 'Reading a book', dateTime: DateTime.now().toString()),
  Todo(label: 'Watching a video', dateTime: DateTime.now().toString()),
  
];

final todoProvider = StateNotifierProvider<TodoProvider,List<Todo>>((ref) => TodoProvider(todos));

class TodoProvider extends StateNotifier<List<Todo>>{
  TodoProvider(super.state);

  void addTodo() {

  }
  void removeTodo(){

  }
  void updateTodo(){

  }
}


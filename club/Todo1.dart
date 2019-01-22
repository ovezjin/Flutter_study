import "package:flutter/material.dart";

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
	
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title: 'Todo List',
			home: TodoList()
		);
	}
}

class TodoList extends StatefulWidget {
	
	@override
	createState() => TodoListState();
}

class TodoListState extends State<TodoList> {

	List<String> _todoItems = [];

	void _addTodoItem(){
		setState((){
			int index = _todoItems.length;
			_todoItems.add('Item ' + index.toString());
			});
	}
	
	Widget _buildTodoList() {
		return ListView.builder(
			itemBuilder(context, index){
				if (index < _todoItems.length) {
					return _buildTodoItem(_todoItems[index]);
				}
			},
		);
	}

	Widget _buildTodoItem(String todoText) {
		return ListTile(
			title: Text(todoText)
		);
	}

	@override
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Todo List')
			),
			body: _buildTodoList(),
			floatingActionButton: FloatingActionButton(
				onPressed: _addTodoItem,
				tooltip: 'Add Task',
				child: Icon(Icons.add)
			)
		);
	}
}
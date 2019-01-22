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

	void _addTodoItem(String task){
		if(task.length > 0){
      setState(() => _todoItems.add(task));
    }
	}
	
  void _removeTodoItem(int index){
    setState(() => _todoItems.removeAT(index));
  }

  void _promptRemoveTodoItem(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Mark "${_todoItems[index]}" as done?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop()
            ),
            FlatButton(
              child: Text('Mark as done'),
              onPressed: (){
                _removeTodoItem(index);
                Navigator.of(context).pop();
              }
            )
          ]
        );
      }
    );
  }

	Widget _buildTodoList() {
		return ListView.builder(
			itemBuilder: (context, index){
				if (index < _todoItems.length) {
					return _buildTodoItem(_todoItems[index], index);
				}
			},
		);
	}

	Widget _buildTodoItem(String todoText, int index) {
		return ListTile(
			title: Text(todoText),
      onTap: () => _promptRemoveTodoItem(index)
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
				onPressed: _pushAddTodoScreen,
				tooltip: 'Add Task',
				child: Icon(Icons.add)
			)
		);
	}

  void _pushAddTodoScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Add a new task')
            ),
            body: TextField(
              autofocus: true,
              onSubmitted: (val) {
                _addTodoItem(val);
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                hintText: 'Enter something to do...',
                contentPadding: const EdgeInsets.all(16.0)
              ),
            )
          );
        }
      )
    );
  }
}
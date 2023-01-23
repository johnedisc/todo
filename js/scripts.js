//Add an option for users to indicate a task is done.
//Allow users to remove a task from the list.
//Use test-driven development to write your business logic, and include the tests in your README.md. After every passing test, make sure to commit your code.
//If you complete the business logic, you may work on adding a user interface. (See the upcoming lessons for more on adding a UI.)
//

// business logic TodoList

function TodoList() {
  this.tasks = {};
  this.numberId = 0;
}

TodoList.prototype.addTask = function(newTask) {
  newTask.id = this.newId();
  this.tasks[newTask.id] = newTask; 
}

TodoList.prototype.newId = function() {
  return this.numberId += 1;
}

TodoList.prototype.completedTask = function(id) {
  if (this.tasks[id]) {
    this.tasks[id].done = true;
  } else {
  return false;
  }
}

// business logic task

function Task(name,dueDate) {
  this.name = name;
  this.due = dueDate;
  this.done = false;
}

let myTodo = new TodoList();
let read = new Task('read monday night\'s chapters for Tuesday', '1.23');
let call = new Task('call to check on dad', '1.23');

myTodo.addTask(read);
myTodo.addTask(call);
myTodo.completedTask(4);

console.log(myTodo.tasks);

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

TodoList.prototype.removeTask = function(id) {
  if (this.tasks[id]) {
    delete this.tasks[id];
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

// ui logic

window.addEventListener('load', (e) => {
  e.preventDefault;

  const taskForm = document.getElementById('taskForm');

  taskForm.addEventListener('submit', (e) => {
    

  });

});

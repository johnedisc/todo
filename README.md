# to-do list

#### by [johnedisc](https://johnedisc.github.io/portfolio/)

#### an excercise in object making with constructor functions

## technologies used

* html
* css
* javascript
* lua/nvim

## description

* 

## setup/installation requirements

* visit the site [here]()
* clone down the [repository from github]() inside the directory of your choosing
```bash
git clone 
```
* open index.html in your favorite browser
* browse as you would any website

## known Bugs

## tech learned in making the site

## testing and layout

describe: addTask()

test: "should add task to a TodoList through inheritance from the TodoList prototype"
code:
let read = new Task;
TodoList.addTask(read)
expected Output: TodoList { tasks: { read: { name, dueDate, etc } } };

test: "should have unique id number"
code:
let read = new Task;
TodoList.addTask(read)
expected Output: TodoList { tasks: { 3: Task { name, dueDate, etc } } };

describe: completedTask(id)

test: "should mark task in todo as completed"
code:
myTodo.completedTask('1');
expected Output: myTodo.tasks['1'].done = true;


test: "should return false if bad id given"
code:
myTodo.completedTask('4');
expected Output: myTodo.completedTask['4'] = false;

describe: removeTask(id)

test: "should remove task from todo list"
code:
myTodo.remove('1');
expected Output: myTodo.tasks['1'] = false;

## license

feel free to get in touch at [christopher(dot)johnedis(at)gmail(dot)com](christopher.johnedis@gmail.com)

Copyright (c) 1.20.23 [johnedisc](https://johnedisc.github.io/portfolio/)

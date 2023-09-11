
// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract ToDoList {

    struct Todo {
        string text;
        bool isCompleted;
    }

    Todo[] todos;

    function addToList( string memory _text ) external {
        todos.push(Todo({
            text: _text,
            isCompleted: false
        }));
    }

    function editToDo( uint _index, string memory _text ) external {
        todos[_index].text = _text;
    }

    function displayToDo( uint _index ) external view returns ( string memory, bool ) {
        Todo memory todo = todos[_index];
        return ( todo.text, todo.isCompleted );
    }

    function isCompleted( uint _index ) external {
        todos[_index].isCompleted = true;
    }

    function del(uint _index) external {
        delete todos[_index];
    }
}



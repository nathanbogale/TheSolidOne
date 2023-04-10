//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

//to import struct in to any contract add the below line in it, showing the path to the enum file
// import "./StructDeclaration.sol"

contract Todos{
//A struct is a creative data structure format in Solidity where variables of diverse data types can be bundled into one variable or a custom-made type. 
//Once the data types are grouped into a struct, the struct name represents the subsets of variables in it.
    struct Todo{
        string text;
        bool completed; //completed turns bools in to true, from teh default false
    }

    //array of Todo structs
    Todo[] public todos;

    function create(string calldata _text) public{
        //3 wasys to initialize structs 
            // 1 - calling it like a function
                todos.push(Todo(_text, false));

            // 2 - key value maping
                //todos.push(Todo({text: _text, completed: false}));
            
            // 3 - initialize an empty struct then update it
                //  Todo memory todo;
                //  todo.text = _text;
                    //todo.completed unutualized to false
                //  todos.push(todo); //pushing the todo into the todos

    }

    //solididy prepares a getter by default
    //no real reason for the function below
    function get(uint _index) public view returns(string memory text, bool completed){
        Todo storage todo = todos[_index]; //will give back the particular element to update
        return (todo.text, todo.completed);
    }

    //update text
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index]; //will give back the particular element to update
        todo.text = _text;
    }

    //update completed
    //if false turns it to true and vice versa
    function toggleComplete(uint _index) public{
        Todo storage todo = todos[_index]; //will give back the particular element to update
        todo.completed = !todo.completed;
    }
}
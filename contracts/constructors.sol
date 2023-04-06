//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


contract X{
    string public name;
    constructor (string memory _name){
        name = _name;
    }
}

contract Y{
    string public text;
    constructor(string memory _text){
        text = _text;
    }
}


//how to initialize parent contracts with parameters  - 2 ways!

    // 1
    //pass parameter in the inheritance list 
    //inheriting the parent contract in to another contract, and initializing with the value
    contract B is X("Input to X"), Y("Input to Y"){ 

    }

    // 2
    //pass parameter in the constructor
    //similar to modifiers 
    contract C is X,Y{
        constructor(string memory _name, string memory _text) X(_name) Y(_text){

        }
    }


//parents are always called in the inheritance order 
//regardless of the order of parent contracts listed in the 
//constructor of the child contract

//Order of contracts called:
//1: X
//2: Y
//3: D
contract D is X, Y{
    constructor () X("X was called") Y("Y was called"){

    }
}

contract E is X, Y{
    constructor () X("X was called") Y("Y was called"){

    }
}


//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract IfElse{
    
    uint public myNum = 5;
    string public message;

    function longCondition(uint _newVal) public returns(string memory){
        // if (_newVal > myNum){
        //     message = "GREATER!";
        // }else if (_newVal < myNum){
        //     message = "LESSER";
        // }else{
        //     message = "EQUAL";
        // }
    }

    function shortCondition(uint _newVal) public returns(string memory){
        //called tenery operator: using the if else in one line
        return _newVal == myNum ? message = "EQUAL" : message = "NOT EQUAL";
    }

}
//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract WhileLoop{

    uint[] data;
    uint public myNum = 0;

    function looper(uint _input) public returns(uint[] memory){
        while(_input > myNum){
            myNum++;
            data.push(myNum);
        }
        return data;
    }
 
}

contract DoWhile{
    uint[] data;
    uint public myNum = 0;

    function looper(uint _input) public returns(uint[] memory){
        do{
            myNum++;
            data.push(myNum);
        }while(_input > myNum);
        return data;
    }
}


contract ForLoop{


    uint[] data;

    function looper(uint _input) public returns(uint[] memory){
        for(uint i = 0; i < _input; i++){
            data.push(i);
        }
        return data;
    }

}
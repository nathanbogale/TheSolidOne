//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract DataLocations{


// STORAGE: data defined here is going to be store on the BC, not free
// MEMORY: data defined here only exists in teh functions 
// CALLDATA: data here is an argument


    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct{
        uint foo;
    }
    mapping(uint=>MyStruct) myStructs;

    function f() public{
        //call _f with state variabls
        _f(arr, map, myStructs[1]);

        //get a struct from a mappign
        MyStruct storage myStruct = myStructs[1];
        //create  atruct in memory 
        MyStruct memory myMemStruct = MyStruct(0);
    }


    //a function that runs internally 
    function _f(uint[] storage _arr, mapping(uint=>address) storage _map, MyStruct storage _myStruct) internal {
        //
    }

    //can return memory cvariables
    function g(uint[] memory _arr) public returns(uint[] memory){ //to return the data in memory, not from or to BC

    }

    function h(uint[] calldata _arr) external{

    }

}
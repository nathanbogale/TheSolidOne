//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


//MODIFIERS
//are code that can be run before and after a function call
//for: Restriction, Input validation and Guarding against re-entrancy

contract FunctionModifier{

    address public owner;
    uint public x = 10;
    bool public locked; 

    constructor(){
        owner = msg.sender;
    }

    //checking owner 
    modifier onlyOwner(){
        require(owner == msg.sender, "U NOT OWNA!");
        _;  //this is how modifier tells its okay to proceede - execute the other function, or continue 
    }

    //checking address
    modifier validateAddr(address _addr){
        require(_addr != address(0), "Not a valid address!");
        _;
    }

    //changing owner 
    //only the owner can call this modifier 
    function changeOwner(address _newOwner) public onlyOwner validateAddr(_newOwner){  //calling the 2 modifiers as functions 
        owner = _newOwner;
        
    }


    //modifier to avoid reentruncy
    modifier noReentruncy(){
        require(!locked, "NO Re-Entruncy!");
        locked = true;
        _;
        locked = false;
    }
    uint public i = 1;
    function decrement() public noReentruncy{

        x -= 1;
       
        //basically limited this function to only run once.. 
        //decrement the value of x only once 
        i -= 1;
        if (i > 1){
             decrement();
        }
        
     
    }

}
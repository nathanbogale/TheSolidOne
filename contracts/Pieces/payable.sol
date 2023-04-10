//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract Payable{
  
//payable address can recive ETH
address payable public owner;

//payabel constructos can recive ether
  constructor() payable {
    owner = payable(msg.sender);  //the person deploying the contract can recieve ETH
  }

//Funciton to deposite ETH into this contract
//call this funcction with some ETH
//balance of this contract wll automaticall be updated
  function deposit() payable public {}

//call this funcction with some ETH
//not a payable function so will throw an error if tried to send funds with it
  function notPayable() public{}

//withraw all ETH from this contract
  function withdraw() public{

    //get the amount of the ETH stored in this contract
    uint amount = address(this).balance;  //address(0) alos means this contract

    //send all ETH to owner
    //owner can recive ETH since address oof owner is payable
    (bool success, ) = owner.call{value: amount}(""); //this will send all the funds to the owner adderss
    require(success, "Failed to Send yow!");

  }

//function to transfer funds to address inputed to the func
function transfer(address payable _to, uint _amount) public {
    (bool success, ) = _to.call{value: _amount}(""); //this will send all the funds to the owner adderss
    require(success, "Failed to Send yow!");
}
}
//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract A{

  string public message = "Hello";

  // to override state variables, not need to use override blah

  function getName() public view returns (string memory){
    return message;
  }
}

contract B is A{
  //this is how to overridde inherited state variable 
  constructor(){
    message = "Ola";
  }
  //B.getName returns "Ola"
}
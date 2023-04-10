//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract A{
  //use virtual keyword to denote the function can be overridedn by a child contract 
  function foo () public pure virtual returns(string memory){ 
    return "A";
  }
} 

contract B is A{  // is is used to inherit 
  //overriding A.foo()
  //override keyword is used to tell this funcion is going to override the parent function 
  function foo () public pure virtual override returns(string memory){
    return "B";
  }
}
contract C is A{  // is is used to inherit 
  //overriding A.foo()
  //override keyword is used to tell this funcion is going to override the parent function 
  function foo () public pure virtual override returns(string memory){
    return "C";
  }
}


contract D is B,C{ //can inherit multiple contracts
  //D.foo() returns 'C' because C is the right most parent contract wth function foo()
  function foo() public pure virtual override (B,C) returns (string memory){
    return super.foo();
  }
}


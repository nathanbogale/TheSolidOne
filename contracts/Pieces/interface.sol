//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


//can interact with other contracts by declaring interfaces
//cant have functions implemented
//can inherit from oher interfaces
//all declared functions must be exernal
//cant declare constructos
//cant declare state variables 


contract counter{

  uint public count;
  function increment() external{
    count += 1;
  }
}

interface ICounter {
  function count () external view returns(uint);  //functions can only be external

  function increment() external;
}

contract MyContract{
  function incrementCounter (address _counter) external{
    ICounter (_counter).increment();  //calling a function from the interface
  }

  function getCount(address _counter) external view returns(uint){
    return ICounter(_counter).count();  //calling a function from the interface
  }
}


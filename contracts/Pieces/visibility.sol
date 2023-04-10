//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


/*
Function visibility:
-public - any contract and account can call it
-private - called only inside the contract that defines that function, inheriting contracts cant call it
-internal - only inside the contract that inheits and that internal function
-external - only other contracts and accounts can call it
*/


contract main{

//only called inside the contract
//inheriting contracts cant call them
  function privateFunc () private pure returns(string memory){
    return "Private Function Called!";
  }
  function testPrivate () public pure returns(string memory){
    return privateFunc();
  }


//called inside the contracts
//inheriting contracts can also cll them  
  function internalFunc () internal pure returns(string memory){
    return "Internal Function Called!";
  }
  function testInternal() public pure returns(string memory){
    return internalFunc();
  }
  
//called inside th contracts
//inside inheriting contracts
//other contracts and accoutns 
  function publicFunc () public pure returns(string memory){
    return "Public Function Called!";
  }
  function testPublic () public pure returns(string memory){
    return publicFunc();
  }


//only called by other contracts anc accounts 
  function externalFunc () external pure returns(string memory){
    return "External Function Called!";
  }
  //the following will not work: since im trying o call an externa function here
  /*
  function testExternal() public pure returns(string memory){
    return externalFunc();
  }
  */
  
//State variables:
string private privateVar = "Private Variable";
string internal internalVar = "internal Variable";
string public publicVar = "public Variable";
//state variables cant be external 

}


contract child is main{
  function testMain() public pure returns (string memory){
      return internalFunc();
  }
}
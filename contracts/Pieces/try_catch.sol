//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


contract Main{
  address public owner;

  constructor(address _owner){
    require(_owner != address(0), "Invalid Address"); //checking if the address is not the contract address
    assert(_owner != 0x0000000000000000000000000000000000000001); 
    owner = _owner;  //if the address is not the contract address, then set a new owner value
  }

  function myFunc(uint x) public pure returns(string memory){
    require (x != 0, "REquire Failed!");
    return "myFunc was called"; 
  }
}

contract child{
  //starts by creating an event
  event Log(string message);
  event LogBytes(bytes data);

  Main public main;

  constructor(){
    main = new Main(msg.sender); //passing the address value to the Main argument , and making him the owner 
  }


//example of try /catch with external call
// tryCatchExternalCall(0) => Log("external call failed")
// tryCatchExternalCall(1) => Log("myFunc was called")
  function tryCatchExternalCall(uint _i) public{
    try main.myFunc(_i) returns (string memory result){
      emit Log(result);
    }
    catch{
      emit Log("External call failed");
    }
  }

  //have to check the addresses are not 0 as well
  function tryCatchNewContract(address _owner) public {
    try new Main(_owner) returns (Main main){
      emit Log("Main Created");
    }catch Error(string memory reason){
      //catch failing revert() and require()
      emit Log(reason);
    }catch(bytes memory reason){
      //catch failing assert()
      emit LogBytes(reason);
    }
  }
  
}
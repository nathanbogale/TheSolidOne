//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract Fallback{

  event Log(string func, uint gas);

  //fallback funciton must be external
  fallback() external payable{
  //send / transfer fowrads 2300 gas to this fallback function
  //call forwards all  of the gas
    emit Log("fallback", gasleft());
  }

  receive() external payable{
    emit Log("receive", gasleft());
  }

  //helper function to check the balacne of the contract
  function getBalance() public view returns(uint){
    return address(this).balance;
  }

}


contract sendToFallback{
  function transferToFallback(address payable _to) public payable{
      _to.transfer(msg.value);
  }  
  function callFallback(address payable _to) public payable{
    (bool sent, ) = _to.call{value:msg.value}("");
    require (sent, "Failed to send!!!");
  }
}
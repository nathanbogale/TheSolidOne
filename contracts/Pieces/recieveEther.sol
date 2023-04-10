//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


//inorder to send funds from or to a contract or a wallet address there are 3 ways:
// - transfer : 2300 gas, throws error
// - send: 2300 gas, returns bool
// - call forward all gas or set gas, returns bool

contract ReveiveEther{

    /**

     functions to be called -

          send ETH
             |
        msg.data empty?
          /       \
        yes       no
        /           \
      recive()     fallback()

     **/


    //function to recieve ETH. msg.data must be empty
    receive() external payable{}

    //fallback function is called when msg.data is not empty
    fallback() external payable{}

    function getBalance() public view returns(uint){
      return address(this).balance;
    }
}


contract SendEther{
//via transfer
  function sendViaTRANSFER(address payable _to) public payable{
    //this functio is no longer recommended to sends funds
    _to.transfer(msg.value);
  }
//via send 
  function sendViaSEND(address payable _to) public payable{
    //this functio is no longer recommended to sends funds
    //gives back bool on sucess or failure 
    bool sent = _to.send(msg.value);
    require(sent, "Failed to send bro!");
  }
//via call
  function sendViaCALL(address payable _to) public payable{
    //curreny the recommended approach to send funcds
    //gives back bool on sucess or failure 
    (bool sent, bytes memory data) = _to.call{value:msg.value}("");
    require(sent, "Failed to send bro!");

  }

}
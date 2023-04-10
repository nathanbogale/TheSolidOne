//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract LearnFunction{

  uint256 hey;

  //get data with the function
  function getInfo() public view returns(uint256){
    return hey;
  }

    function updateData(uint256 _hey) public{
        hey = _hey;
    }

    function adder(uint256 _a, uint256 _b) public view returns(uint){
        uint256 value = _a + _b;
        return value; 
    }
}
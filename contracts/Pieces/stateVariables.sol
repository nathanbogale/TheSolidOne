//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


contract stateVariable{


    // setting and changing the values of state variables

    //have no values
    string public myState;
    uint256 public myNum;

    //have values
    string public defaultText = "Im default text";
    uint256 public defaultNum = 5;

    //byte
    bytes public notDefaultByte = "hey default"; //output is 0: bytes: 0x6865792064656661756c74
    bytes public defaultByte; //output is 0:bytes: 0x

    //array
    uint256[] public myNumber;

 constructor (string memory _text, uint _numm){
        myState = _text;
        myNum = _numm;
    }

    function update (string memory _text, uint _numm) public{
              myState = _text;
        myNum = _numm;
    }
   
}



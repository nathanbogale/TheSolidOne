//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract DataTypes{

    //BOOL
    bool public hey; //default value of bool is false
    bool public no = true; //this is how to change the def value

    //UINT - unsigned integer, no negative ints only positive 
     //uint values used also determine gas fees, to save use lower uints 
     //its default value is zero
        //uint8 //ranges from: 0-2 * 8-1 //255 //is the lowest uint.. 16, 24
        //uint16 //ranges from: 0-2 * 16-1 //65535 //is the lowers one.. 16, 24
        //uint256 //ranges: 0-2 * 256-1// the highest value //default is 256

    uint8 public u8= 1;
    uint public u = 456;
    uint256 public u256 = 123;


    //NEGATIVE NUMBER - allowered by using the int type
        //int default value is zero
        //int256 / from -2**255 to 2**255-1 
        //int128 / from -2**127 to 2**127-1 

    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123;


    //MIN AND MAX of a number
    int public minInt = type(int).min;
    int public maxInt = type(int).max;


    //ARRAY
    //fixed sized byte arrays and dynamically sised byte arrays

    //Bytes types
    //bytes are by default dynamically sized 
    //bytes are very memory efficient better than string 
    bytes1 public a = 0xb5;  //byte data always starts with 0x
    bytes1 public b = 0x56;

    //Address types
    //default value is 0x0000000
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    



}
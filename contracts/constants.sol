//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract Constant{

    //NOT CONSTANT
    //GAS FEE / TRX COST = 130242
    //address public my_addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //CONSTANT
    //GAS FEE / TRX COST = 104187
    address public constant my_addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //constants save gas fee, and they cant be changed!
}
//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract LocalVariable{

    uint256 public myNumber;

        //all variables inside a function are called local variabels, and used in memory
        //only exist in the function, not stored on BC, on ly executed whe nfunction is called

        function local() public returns(address, uint256, uint256){
            uint256 i = 456;
            myNumber = i; //assiging the localvariable value to the state variable 

            i += 45;
            address myAddress = address(1);
            return (myAddress, myNumber,i);
        }

    

}

//SPDX-License-Identifier: MIT
// starting by providing the license identifier 

//defining the compiler version
//telling it to use any version above the specified one via ^
pragma solidity ^ 0.8.13;


//defining the contract and contract name
contract SolidOne{
   // string public hey = "Hey World"; //pubic keywors allows to create a getter function
   // uint256 public no = 4;

   string public hey;
   uint256 public no;


        //runs everytime contract is deployed
        //using _ is how variables are defiend 
        //this is how to update data and state variable
    //constructor(string memory _hey, uint256 _no){
        //hey = _hey;
        //no = _no;
    // }

    //same thing van be done in functions with 
    function addInfo(string memory _hey, uint _no) public {
        hey =_hey;
        no = _no;
    }

}
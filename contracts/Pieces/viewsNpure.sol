//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract View{

    uint Num1 = 3823923;
    uint Num2 = 12345;

    function getResults () public view returns(uint, uint){
        return (Num1, Num2);
    }


    //its the view in the following code allowing me to access the state variable
    //ONLY allowing seeing the value, not modifying it! even if the vars are not public
    //pure in place of view, only allows access of local variables - cant let functions access state variables
    function calculator () public view returns(uint256 stateSum, uint256 localSum){
        uint256 num1 = 5;
        uint256 num2 = 50;

        stateSum = Num2 * Num2;
        localSum = num1 + num2;

       return (stateSum, localSum); //code works normaly WITH OUT this line
    }

}
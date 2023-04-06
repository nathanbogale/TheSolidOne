//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


//to import enums in to any contract add the below line in it, showing the path to the enum file
// import "./EnumDeclaration.sol"
contract Enum{

    //enum representing shipping status
    enum Status{
        Pending, 
        Shipped, 
        Accepted, 
        Rejected,
        Cancelled
    }
    //the first value is the default value of an enujm

    Status public status;

    //returns uint;
    //Pending=0
    //Shipped=1
    //Accepted=2 
    //Rejected=4
    //Cancelle=5

    function get() public view returns(Status){
        return status;
    } 

    //update the status by passing value into input
    function set(Status _status) public{
        status = _status;
    }

    //updating a specific enum
    function cancel() public{
        status = Status.Cancelled; //updatign the status
    }

    //deletign sets the value to 0
    function reset() public{
        delete status;
    }
}



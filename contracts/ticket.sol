//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


contract Ticket{

    //defining the state variables
    uint  ticketPrice;
    uint  numberOfTickets;
    uint  totalAmount;
    uint  startAt;
    uint  endAt;
    uint  timeRange;
    string public message = "GET YOUR TICKETS HERE!";


    constructor (uint _ticketPrice){
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days; 
        timeRange = (endAt - startAt) / 60 / 60 /24; //changing itto seconds 
    }

    function buyTickets(uint _value) public returns(uint ticketId){
        numberOfTickets += _value;
        totalAmount = numberOfTickets * ticketPrice;
        ticketId = numberOfTickets;
    }

    function getAmount() public view returns(uint, uint){
        return (numberOfTickets, totalAmount);
    }


}
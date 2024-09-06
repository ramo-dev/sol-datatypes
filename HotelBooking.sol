// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//concepts
//payment with ether
//Modifiers
//visibility
//Events
//Enums

contract HotelRoom{
    //status check if vacant or occupied
    enum Statuses {Vacant, Occupied}

    Statuses public currentStatus;

    //log events of hotel booking
    event Occupied(address _occupant, uint _value);

    //address of the owner
    address payable public owner;

    //defualt  address and status when deploying
    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }
    //reusable conditions
    modifier onlyWhileVacant {
        //check status
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint _amount){
        //check price
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    //function to book hotel
    function bookHotel() payable public onlyWhileVacant costs(2 ether) {

        currentStatus = Statuses.Occupied;
        (bool sent,) = owner.call{value: msg.value}("");
        require(sent, "The transaction failed.");

        //emit events of hotel bookings
        emit Occupied(msg.sender, msg.value);

    }

}

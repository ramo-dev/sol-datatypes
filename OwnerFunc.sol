// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CheckOwner{
  //varible to store owners address;
  address public owner;

  //default owner to this address
  constructor(){
    owner = msg.sender;
  }

  //this functions checks if the current address is the owner of the smart contract
  function checkIfOwner() public view returns(bool){
    return(msg.sender == owner);
  }
}

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract MyContract{
    //bytes32 public myString32 = "something";
    //dummy address
    //address public myAddress = 0x969799f8688308DE74e2f242AF3B51c3825D191C;
    string[] public myStringArray = ["somethings", "otherthings"];
    uint[] public myNumbersArray = [1, 2, 3];
    uint[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    string[] public value;

    function addValue(string memory _value) public {
        value.push(_value);
    }


    function returnLength() public view returns(uint){
        return myNumbersArray.length;
    }

    struct LayerInterface {
        string myString32;
        address myAddress;
    }

    //This is a struct i consider it kinda like an interface in ts but its not the same
    LayerInterface public userObj = LayerInterface("user1", 0x969799f8688308DE74e2f242AF3B51c3825D191C);

    function returnInterface() public view returns (LayerInterface memory){
        return userObj;
    }



}

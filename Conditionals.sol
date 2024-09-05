// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Conditionals{
     //loops and conditionals
    uint[] public myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    //takes and checks an int if is even, returns true else false if not even
    function isEvenNumber(uint _number) public pure returns(bool){
        if(_number % 2 == 0){
            return true;
        } else {
            return false;
        }
    }

    //looping through an array
    function countEvenNumbers() public view returns(uint){
        uint count = 0;
        for(uint i = 0; i < myArray.length;i++){
            if(isEvenNumber(myArray[i])){
                count++;
            }
        }
            return count;
    }


}

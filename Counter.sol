// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Counter{
    //state variable
    uint public count = 0;

    function increamentCount() public {
        count = count + 1;
    }


}

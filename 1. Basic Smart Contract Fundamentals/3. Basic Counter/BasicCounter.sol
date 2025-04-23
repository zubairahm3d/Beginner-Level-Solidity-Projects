
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicCounter{

    uint private number;

    function increment() public {
        number=number+1;
    }

    function decrement() public{
        number = number - 1;
    }

    function getNumber() public view returns (uint){
        return number;
    }

}
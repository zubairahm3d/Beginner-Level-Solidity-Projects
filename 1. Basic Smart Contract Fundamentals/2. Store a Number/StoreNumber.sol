// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract StoreNumber{

    uint private number;

    function storeNumber(uint n) public {
        number=n;
    }


    function getNumber() public view returns (uint){
        return number;
    }
}
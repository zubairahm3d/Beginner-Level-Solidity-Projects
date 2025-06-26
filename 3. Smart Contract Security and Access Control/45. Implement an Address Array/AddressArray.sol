// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressArray{
    address[] public addresses;
    function addAddress(address a)public {
        addresses.push(a);
    }
    
}
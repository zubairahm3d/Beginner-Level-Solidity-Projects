// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract  WhitelistAddresses{
    mapping(address=>bool) public addresses;
    address public owner;
    constructor(){
        owner=msg.sender;
        addresses[owner]=true;
        addresses[0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2]=true;
    }

    function checkPermission() public view returns (bool) {
        if(addresses[msg.sender]) return true;
    }
}
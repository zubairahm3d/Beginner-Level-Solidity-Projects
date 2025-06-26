// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingAddresses{
    mapping(address=>uint) balances;

    function addBalance(uint balance, address _address) public{
        balances[_address]+=balance;
    }

    function getBalance(address _address)public view returns(uint){
        return balances[_address];
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auth{
    address public owner;

    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner{
        require(owner==msg.sender,"only owner can call this");
        _;
    }
    function login() public onlyOwner view returns(string memory){
        return "success";
    }
}
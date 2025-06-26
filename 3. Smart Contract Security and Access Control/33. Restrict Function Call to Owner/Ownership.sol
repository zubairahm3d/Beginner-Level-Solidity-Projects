// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract  Ownership{
    address public owner;
    
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(){
        require(owner == msg.sender, "only the owner can do this action");
        _;
    }
    function getSecret() public onlyOwner view returns (string memory) {
        return "The secret is 42";
    }

    function transferOwnership(address newOwner) public onlyOwner {
        owner=newOwner;
    }
}
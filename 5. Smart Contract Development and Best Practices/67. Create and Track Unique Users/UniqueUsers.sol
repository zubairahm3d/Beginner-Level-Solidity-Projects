// ### 67. Create and Track Unique Users  
//    **Description**: Manages distinct user entities.  
//    **Key Concepts**: Address deduplication, user registry, uniqueness.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UniqueUser{
    mapping(address=>string) private users;
    address[] private addresses;

    function addUser(string memory _name) public{
        require(bytes(users[msg.sender]).length == 0, "You already have registered");
        users[msg.sender]=_name;
        addresses.push(msg.sender);
    }
    function getUser() view public returns (string memory){
        return users[msg.sender];
    }
}
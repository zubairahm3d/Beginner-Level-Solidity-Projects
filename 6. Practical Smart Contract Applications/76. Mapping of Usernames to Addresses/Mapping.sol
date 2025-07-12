// ### 76. Mapping of Usernames to Addresses  
// **Description**: Implements username registry with address resolution  
// **Key Concepts**: String-to-address mapping, reverse lookups, name services  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserToAddresses{
    mapping(string=>address) private users;
    mapping(address=>string) private addresses;

    function addUser(string memory _name) public {
        users[_name] = msg.sender;
        addresses[msg.sender]=_name;
    }
    function getUserByName(string memory _name) public view returns(address){
        return users[_name];
    }

    function getUserByAddress() public view returns(string memory){
        return addresses[msg.sender];
    }
}
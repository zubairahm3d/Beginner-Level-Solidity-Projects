// ### 75. Add a Struct with Address and Balance  
//    **Description**: Combines identity and value tracking.  
//    **Key Concepts**: Composite data types, account modeling, struct packing.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet {
    struct User {
        address userAddress;
        uint balance;
    }

    mapping(address => User) public users;

    function addUser() public payable {
        User storage user = users[msg.sender];
        user.userAddress = msg.sender;
        user.balance += msg.value;
    }

    function getUserInfo() public view returns (User memory) {
        return users[msg.sender];
    }
}

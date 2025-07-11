// ### 66. Generate and Store User ID (counter-based)  
//    **Description**: Creates unique identifiers for users.  
//    **Key Concepts**: Counter pattern, ID generation, uniqueness.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserId{
    struct User{
        uint id;
        string name;
    }

    User[] private users;
    uint private counter;

    constructor(){
        counter=0;
    }

    function addNewUser(string memory _name) public{
        users.push(User(counter, _name));
        counter++;
    }
    function getUsers() view public returns(User[] memory){
        return users;
    }

}
// ### 81. Get Total Count of Users Registered  
// **Description**: User registry with counter  
// **Key Concepts**: Population tracking, counter patterns  
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CountUsers{
    struct Users{
        uint id;
        string name;
    }

    Users[] private users;
    uint private nextId;
    uint totalRegistered;
    constructor(){
        nextId=0;
        totalRegistered=0;
    }
    function addUser(string memory _name) public{
        users.push(Users(nextId,_name));
        nextId++;
        totalRegistered++;
    }
    function removeUser(uint id) public{
        require(id<users.length-1, "Out of index");
        for(uint i=id;i<users.length;i++){
            users[i]=users[i+1];
        }
        // nextId--;
        users.pop();
    }

    function getUser(uint id) public view returns(string memory){
        require(id < users.length, "Invalid index");
        return users[id].name;
    }
    function getCurrentCount() public view returns(uint){
        return users.length;
    }
    function totalRegisteredCount() public view returns(uint){
        return totalRegistered;
    }
}
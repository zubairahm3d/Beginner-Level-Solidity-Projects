// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting{

    struct User{
        uint id;
        string name;
        uint votes;
    }
    User[] public users;
    uint nextId;


    function addUser(string memory name) public{
        users.push(User(nextId,name,0));
        nextId++;
    }
    function vote(uint _id) public{
        users[_id].votes++;
    }
    function getUser() public view returns(User[] memory){
        return users;
    }

    function getWinner()public view returns (string memory) {
        uint _id=0;
        uint votes=0;
        for(uint i=0;i<nextId;i++){
          if(votes<users[i].votes){
            votes=users[i].votes;
            _id = users[i].id;
          }
        }
         return users[_id].name;
          }
        }

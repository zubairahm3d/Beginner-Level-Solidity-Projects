// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StoreUser{
    struct User{
        string name;
        uint age;
    }
    mapping(address => User) public users;

    function setUser(address _address, uint age, string memory name)public {
        users[_address]=User(name,age);
    }

    function getUser(address _address) public view returns(User memory){
        return users[_address];
    }
}
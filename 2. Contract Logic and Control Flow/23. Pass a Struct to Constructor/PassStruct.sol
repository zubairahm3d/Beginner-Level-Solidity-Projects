// ### 23. Pass a Struct to Constructor  
//    **Description**: Initializes contract with structured data at deployment.  
//    **Key Concepts**: Struct initialization, constructor arguments.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PassStruct{

    struct User{
        string username;
        string password;
    }

    User private user;
    address owner;

    constructor(User memory _user){
        owner=msg.sender;
        user=_user;
    }

    modifier onlyOwner() {
        require(msg.sender == owner,"Unauthorized User");
        _;
    }

    function getUser() public view onlyOwner returns(User memory){
        return user;
    }

}
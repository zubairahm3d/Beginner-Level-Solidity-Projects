// ### 85. Create Dummy Data on Contract Deployment  
// **Description**: Initialize contract with test data  
// **Key Concepts**: Mock data, constructor initialization  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MockData{
    struct User{
        string _name;
        address _address;
    }
    User private user;
    constructor(){
        user._name = "Zubair Ahmed";
        user._address = msg.sender;
    }
    function getUser() public view returns(string memory){
        return user._name;
    }
}
// ### 84. Validate Simple Login using Address Mapping  
// **Description**: Basic authentication system  
// **Key Concepts**: Identity verification, access control  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Authentication {
    mapping(address => bool) public isAuthenticated;

    function logIn() public {
        require(!isAuthenticated[msg.sender], "You are already authenticated.");
        isAuthenticated[msg.sender] = true;
    }

    function logOut() public {
        require(isAuthenticated[msg.sender], "You are not logged in.");
        isAuthenticated[msg.sender] = false;
    }
}

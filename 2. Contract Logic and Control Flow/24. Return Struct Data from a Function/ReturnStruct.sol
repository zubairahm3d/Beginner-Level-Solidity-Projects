// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReturnStruct {

    struct User {
        string username;
        string password;
    }

    User private user;
    address owner;

    constructor(User memory _user) {
        owner = msg.sender;
        user = _user;
    }

    // Return User struct in memory (recommended for external calls)
    function getUser() public view returns(User memory) {
        return user;
    }

    // Internal function returning User struct in storage
    function getUserFromStorage() internal view returns(User storage) {
        return user;
    }

    // This function is just for testing and showing the internal function
    function testGetUserFromStorage() public view returns(string memory, string memory) {
        // Calling the internal function within another function to demonstrate its usage
        User storage storedUser = getUserFromStorage();
        return (storedUser.username, storedUser.password);
    }
}

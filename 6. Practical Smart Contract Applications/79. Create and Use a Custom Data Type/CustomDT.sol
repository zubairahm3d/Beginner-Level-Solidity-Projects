// ### 79. Create and Use a Custom Data Type  
// **Description**: Type-safe domain-specific definitions  
// **Key Concepts**: Type aliases, value objects, domain modeling  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract UserRegistry {
    // Define a custom type alias for user IDs
    type UserID is uint;

    // Counter to track the next available user ID
    uint private nextId;

    // Mapping from custom UserID type to user address
    mapping(UserID => address) private userIdToAddress;

    // Register a new user and return their custom UserID
    function registerUser() public returns (UserID) {
        UserID id = UserID.wrap(nextId); // Wrap uint into UserID
        userIdToAddress[id] = msg.sender;
        nextId++;
        return id;
    }

    // Get the address associated with a given UserID
    function getUser(UserID id) public view returns (address) {
        return userIdToAddress[id];
    }

    // Get raw uint value of a UserID (if needed externally)
    function getRawUserId(UserID id) public pure returns (uint) {
        return UserID.unwrap(id); // Unwrap UserID to uint
    }
}

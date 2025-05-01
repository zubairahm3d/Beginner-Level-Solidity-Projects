// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//### 11. Array of Structs (e.g. Users)  
//**Description**: Manages an array of `User` structs with add/fetch functions.  
//**Key Concepts**: Struct arrays, storage costs.  

contract ArrayOfStructs {

    struct User {
        string name;
        uint rollNo;
        uint marks;
    }

    User[] public users;

    function addUser(string memory _name, uint _rollNo, uint _marks) public {
        users.push(User(_name, _rollNo, _marks));
    }

    function getUsers() public view returns (User[] memory) {
        return users;
    }
}

// ### 91. Use Interface to Call Another Contract  
// **Description**: Cross-contract communication  
// **Key Concepts**: Interface patterns, external calls  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Interface for the PhysicsClassContract
interface IPhysicsClass {
    function addStudent(string memory _name) external;
    function getStudents() external view returns (string[] memory);
}

// Actual PhysicsClassContract implementation
contract PhysicsClassContract {
    string[] public students;

    // Made public so it can be called via interface
    function addStudent(string memory _name) public {
        students.push(_name);
    }

    function getStudents() public view returns (string[] memory) {
        return students;
    }
}

// Manager contract that uses the interface to interact
contract Manage {
    IPhysicsClass public physics;

    constructor(address _physicsAddress) {
        physics = IPhysicsClass(_physicsAddress);
    }

    function addStud() public {
        physics.addStudent("Zubair");
    }
    function getStud() public  view returns (string[] memory){
        return physics.getStudents();
    }
}

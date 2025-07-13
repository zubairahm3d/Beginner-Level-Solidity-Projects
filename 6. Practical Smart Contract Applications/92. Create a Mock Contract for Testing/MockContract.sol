// ### 92. Create a Mock Contract for Testing  
// **Description**: Test double implementation  
// **Key Concepts**: Unit testing, mock objects  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Interface
interface IPhysics {
    function addStudent(string memory _name) external;
    function getStudents() external view returns (string[] memory);
}

// Real contract
contract Physics is IPhysics {
    string[] public students;

    function addStudent(string memory _name) external override {
        students.push(_name);
    }

    function getStudents() external view override returns (string[] memory) {
        return students;
    }
}

// Mock contract for testing
contract MockPhysics is IPhysics {
    string[] public fakeStudents;

    function addStudent(string memory _name) external override {
        fakeStudents.push(_name);
    }

    function getStudents() external view override returns (string[] memory) {
        return fakeStudents;
    }
}

// Contract that uses the interface
contract Manage {
    IPhysics public physics;

    constructor(address _physics) {
        physics = IPhysics(_physics);
    }

    function add() public {
        physics.addStudent("Zubair");
    }

    function get() public view returns (string[] memory) {
        return physics.getStudents();
    }
}

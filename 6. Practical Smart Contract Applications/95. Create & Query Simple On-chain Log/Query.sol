// ### 95. Create & Query Simple On-chain Log  
// **Description**: Blockchain logging system  
// **Key Concepts**: Event storage, log analysis  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPhysics {
    function addStudent(string memory _name) external;
    function getStudents() external view returns (string[] memory);
}

// Main contract that stores students and emits logs
contract Physics is IPhysics {
    string[] public students;

    event StudentAdded(string name, address addedBy);

    function addStudent(string memory _name) external override {
        students.push(_name);
        emit StudentAdded(_name, msg.sender);
    }

    function getStudents() external view override returns (string[] memory) {
        return students;
    }
}

// Manager contract that triggers logging indirectly
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

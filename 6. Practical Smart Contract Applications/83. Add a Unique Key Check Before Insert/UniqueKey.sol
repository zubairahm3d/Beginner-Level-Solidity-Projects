// ### 83. Add a Unique Key Check Before Insert  
// **Description**: Prevent duplicate entries  
// **Key Concepts**: Uniqueness constraints, existence checks  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UniqueKey{
    struct Faculty{
        address facultyAddress;
        string name;
        bool isRegisteredAlready;
    }
    mapping(uint=>Faculty) private facultyList;

    function addFaculty(uint rollNo,string memory _name) public{
        require(facultyList[rollNo].isRegisteredAlready==false,"This Roll No is Registered!");
        facultyList[rollNo]=Faculty(msg.sender,_name,true);
    }
    
}

// ### 12. Simple Mapping of ID to Names  
//    **Description**: Maps IDs (integers) to names (strings) for efficient lookup.  
//    **Key Concepts**: Mappings, key-value pairs.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping{
    mapping(uint=>string) private  students;

    function setMap(uint rollNo,string memory name) public {
        students[rollNo]=name;
    }

    function get(uint rollNo) public view returns(string memory) {
        return students[rollNo];
    }
}
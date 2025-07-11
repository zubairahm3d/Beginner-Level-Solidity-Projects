// ### 71. Assign Roles Manually (No Role Management System)  
//    **Description**: Basic role-based access control.  
//    **Key Concepts**: Authorization, permissioning, manual role assignment.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RMS{
    address private owner;
    address[] private students;
    mapping(address=>uint) private marks;
    constructor(){
        owner=msg.sender;
    }
    modifier OnlyOwner{
        require(msg.sender==owner,"Access Denied");
    _;
    }

    modifier isStudent{
        for (uint256 i = 0; i < students.length; ++i) {
            if(students[i]==msg.sender){
                _;
                return ; 
            }  
        }
    }

    function setMarks(address _address,uint _marks) public OnlyOwner{
        marks[_address]=_marks;
        students.push(_address);
    }
    function getMarks() public view returns(uint){
        return marks[msg.sender];
    }

}
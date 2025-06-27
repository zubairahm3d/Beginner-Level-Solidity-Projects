// ### 61. Create Contract Using Inheritance  
//    **Description**: Demonstrates contract hierarchy and code reuse.  
//    **Key Concepts**: Inheritance, `is` keyword, parent-child contracts.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CSUniversity{
    string[] internal courses;

    function addCourse(string memory _course) internal {
        courses.push(_course);
    }
    function removeCourse() internal {
        courses.pop();
    }
    function getCourses() public view returns (string[] memory) {
        return courses;
    }
}

contract KarachiBranch is CSUniversity{

    function addNewCourse() public{
        addCourse("Data Science");
    }
    function getAllCourses() public view returns(string[] memory){
        return courses;
    }
}

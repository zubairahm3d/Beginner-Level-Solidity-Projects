// ### 16. Implement a Simple If-Else Logic  
//    **Description**: A contract demonstrating conditional execution based on input values.  
//    **Key Concepts**: Conditional statements, boolean logic, control flow.  
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Conditional{

    string private message;

    function evaluateNumber(uint _num) public{
        if(_num>10 && _num <20) message="Greater than 10";
        else if(_num==10) message= "Equals to 10";
        else if (_num<10) message="Less than 10";
    }

    function getMessage() public view returns(string memory){
        return message;
    }
}
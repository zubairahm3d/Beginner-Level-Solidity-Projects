// ### 53. Implement a Ternary Operation  
//    **Description**: Uses concise conditional expressions.  
//    **Key Concepts**: Conditional logic, syntax optimization, one-line decisions.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TernaryOperation{
    function getResults(uint _marks) public pure returns (string memory) {
        return _marks>=50?"pass":"fail";
    }
}
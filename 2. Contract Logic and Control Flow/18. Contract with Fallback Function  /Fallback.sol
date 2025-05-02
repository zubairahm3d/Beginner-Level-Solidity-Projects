// ### 18. Contract with Fallback Function  
//    **Description**: A contract that reacts to plain Ether transfers or unknown function calls.  
//    **Key Concepts**: Fallback functions, `receive` vs `fallback`, Ether handling.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbackFunctionDemo {
    
    // This function is called when plain Ether is sent with empty calldata
    receive() external payable {}

    // This function is called when no other function matches or when ETH is sent with data
    fallback() external payable {}
}

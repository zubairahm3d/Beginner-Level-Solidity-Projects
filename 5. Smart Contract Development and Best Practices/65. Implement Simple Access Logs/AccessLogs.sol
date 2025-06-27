// ### 65. Implement Simple Access Logs  
//    **Description**: Tracks function calls and access patterns.  
//    **Key Concepts**: Event logging, audit trails, call tracking.   

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessLogs{
    event Caller(address indexed _callerAddress);

    function call()public{
        emit Caller(msg.sender);
    }
}
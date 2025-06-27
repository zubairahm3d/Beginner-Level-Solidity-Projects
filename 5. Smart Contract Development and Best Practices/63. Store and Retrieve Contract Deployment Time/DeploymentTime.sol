// ### 63. Store and Retrieve Contract Deployment Time  
//    **Description**: Captures and exposes contract creation timestamp.  
//    **Key Concepts**: `block.timestamp`, immutable variables, contract lifecycle.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DeploymentTime{
    uint immutable time;
    constructor() {
        time = block.timestamp;
    }
    function getDeploymentTime() public view returns(uint){
        return time;
    }
}
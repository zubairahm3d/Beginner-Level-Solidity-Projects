// ### 55. Use Constructor to Initialize Variables  
//    **Description**: Sets initial contract state at deployment.  
//    **Key Concepts**: Constructor patterns, initialization logic, immutable variables.  
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract constructorContract{
    address immutable owner;
    constructor(){
        owner=msg.sender;
    }
    function getOwner() public view returns(address){
        return owner;
    }
}
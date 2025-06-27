// ### 49. Get Block Number in a Function  
//    **Description**: Accesses blockchain context information.  
//    **Key Concepts**: `block.number`, blockchain context, temporal data.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockNumber{
    function getBlockNumber() public view returns(uint){
        return block.number;
    }
}
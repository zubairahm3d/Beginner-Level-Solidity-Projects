// ### 46. Save Data to a Mapping and Fetch It  
//    **Description**: Implements key-value storage with efficient lookup.  
//    **Key Concepts**: Mappings, storage patterns, gas-efficient retrieval. 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping{

    mapping(address => uint) public votes;
    function addVote(address _address) public {
        votes[_address]+=1;
    }
}
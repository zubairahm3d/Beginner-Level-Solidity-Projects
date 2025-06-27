
// ### 50. Store and Return an Ethereum Address  
//    **Description**: Manages address-type data in storage.  
//    **Key Concepts**: Address storage, zero-address checks, address utilities.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EthAddress{
   address[] public owners;
   function addOwner(address _address)public{
    require(_address != address(0), "Invalid address: zero address");
    owners.push(_address);
   } 
   function getAllOwners() public view returns(address[] memory){
    return owners;
   }

}
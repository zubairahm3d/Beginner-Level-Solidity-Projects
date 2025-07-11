// ### 69. Contract that Sends Ether to msg.sender  
//    **Description**: Implements secure Ether distribution.  
//    **Key Concepts**: Value transfer, withdrawal patterns, send vs transfer.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WithdrawEther{
    receive() external payable { }
    function sendEtherToOwner() public {
        payable(msg.sender).transfer(address(this).balance);   
    }
}
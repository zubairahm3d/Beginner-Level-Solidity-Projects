// ### 96. Retrieve Contract's Ether Balance  
// **Description**: Balance reporting utility  
// **Key Concepts**: Native token accounting  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BalanceEther {
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

// ### 90. Return Address Type from a Function  
// **Description**: Address resolution utility  
// **Key Concepts**: Address handling, type returns  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockNumber {
    uint public lastActionBlock;
    uint public cooldown = 10; // cooldown in blocks

    function doSomething() public {
        require(block.number > lastActionBlock + cooldown, "Cooldown not passed yet");
        lastActionBlock = block.number;
        // perform some action
    }

    function getBlockNumber() public view returns (uint) {
        return block.number;
    }
    function getAddress() public view returns(address){
        // get my address
        return msg.sender;
    }
}

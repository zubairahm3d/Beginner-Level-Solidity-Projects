// ### 99. Implement a Simple Loop Counter  
// **Description**: Iteration control utility  
// **Key Concepts**: Loop management, gas limits  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoopCounter {
    uint public count;

    function runLoop(uint iterations) public {
        require(iterations <= 1000, "Too many iterations, may exceed gas limit");
        for (uint i = 0; i < iterations; i++) {
            count++;
        }
    }

    function resetCount() public {
        count = 0;
    }

    function getCount() public view returns (uint) {
        return count;
    }
}

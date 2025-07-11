// ### 70. Simple Contract Pause/Unpause Functionality  
//    **Description**: Emergency stop mechanism for contracts.  
//    **Key Concepts**: Circuit breakers, emergency stops, pausable pattern.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PauseUnpause {
    address public owner;
    bool public isPaused = false;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    modifier whenNotPaused() {
        require(!isPaused, "Contract is paused");
        _;
    }

    modifier whenPaused() {
        require(isPaused, "Contract is not paused");
        _;
    }

    function togglePause() public onlyOwner {
        isPaused = !isPaused;
    }

    function performAction() public view whenNotPaused returns (string memory) {
        return "Action performed successfully.";
    }
}

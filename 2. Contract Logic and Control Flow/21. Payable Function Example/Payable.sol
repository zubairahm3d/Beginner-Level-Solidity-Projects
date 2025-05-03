// ### 21. Payable Function Example  
//    **Description**: Function that requires Ether payment to execute.  
//    **Key Concepts**: Value handling, `msg.value`, payment verification.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Payable {

    address owner;
    bool public payed;

    constructor() {
        owner = msg.sender;
        payed = false;
    }

    // Accept Ether
    receive() external payable {}

    // Modifier to allow only the owner to call specific functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Returns the contract's current balance
    function getEth() public view returns (uint) {
        return address(this).balance;
    }

    // Allows the owner to withdraw the contract's balance
    function withdrawEther() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }

    // Requires the sender to send at least 1 Wei
    function payAction() public payable {
        require(msg.value > 0, "Amount must be greater than zero");
        payed = true;
    }
}

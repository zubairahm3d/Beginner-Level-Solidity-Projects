// ### 73. Return msg.value from Payable Function  
//    **Description**: Demonstrates value handling in transactions.  
//    **Key Concepts**: `msg.value`, value tracking, payment verification.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet{
    mapping(address=>uint) private balances;

    function addBalance()public payable returns(uint){
        balances[msg.sender] += msg.value;
        return msg.value;
    }

    function withdrawBalance(uint balance) public payable{
        require(balances[msg.sender]>=balance,"Less Balance");
        balances[msg.sender]-=balance;
        payable(msg.sender).transfer(balance);
    }
    function checkBalance() public view returns (uint){
        return balances[msg.sender];
    }
    receive() external payable {
    balances[msg.sender] += msg.value;

    }

}
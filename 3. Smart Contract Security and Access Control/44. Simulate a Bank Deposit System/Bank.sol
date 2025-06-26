// ### 44. Simulate a Bank Deposit System  
//    **Description**: Implements core banking functions securely.  
//    **Key Concepts**: Balance tracking, deposit/withdrawal patterns. 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BankDeposit{

    mapping(address=>uint) public users;

    function deposit()public payable{
        users[msg.sender]+=msg.value;
    }

    function checkBalance() public view returns(uint){
        return users[msg.sender];
    }

    function withdraw(uint _amount) public payable{
        require(_amount <=users[msg.sender],"Insufficient balance");
        users[msg.sender]-=_amount;
        payable(msg.sender).transfer(_amount);
    } 
}
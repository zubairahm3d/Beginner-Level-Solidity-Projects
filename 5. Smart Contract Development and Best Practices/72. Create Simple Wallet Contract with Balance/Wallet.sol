// ### 72. Create Simple Wallet Contract with Balance  
//    **Description**: Basic Ethereum wallet functionality.  
//    **Key Concepts**: Balance management, value storage, Ether handling.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet{
    mapping(address=>uint) private balances;

    function addBalance()public payable{
        balances[msg.sender] += msg.value;
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
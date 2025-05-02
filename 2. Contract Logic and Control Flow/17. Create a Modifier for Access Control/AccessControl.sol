// ### 17. Create a Modifier for Access Control  
//    **Description**: Implements a custom modifier to restrict function access (e.g., onlyOwner).  
//    **Key Concepts**: Function modifiers, access control patterns, `require` statements.  


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessControl{

    address public owner;
    uint public fund=1000;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(uint _amount){
        require(msg.sender == owner,"Only Owner can perform this Operation");
        require(_amount <= fund, "Insufficient funds");

        _;
    }

    function withdrawFund(uint _amount) public onlyOwner(_amount){
        fund-=_amount;
    }

}
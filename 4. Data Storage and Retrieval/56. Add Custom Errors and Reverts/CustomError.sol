// ### 56. Add Custom Errors and Reverts  
//    **Description**: Implements gas-efficient error handling.  
//    **Key Concepts**: Custom errors, revert conditions, gas savings.    
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract customError{
    uint ticketPrice=50;

    error notEnoughMoney(uint _money);
    function buyTicket(uint _money) public view returns(string memory){
        if(_money<ticketPrice){
            revert notEnoughMoney(_money);
        }
        return "purchase successful";
    }
}
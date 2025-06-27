// ### 57. Smart Contract with Math Operations  
//    **Description**: Performs arithmetic calculations on-chain.  
//    **Key Concepts**: Safe math, overflow protection, arithmetic operations.  

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Maths{
    function add(uint a,uint b) public pure returns(uint){
        return a+b;
    }
}
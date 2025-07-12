// ### 77. Multi-variable Comparison in If Statements  
// **Description**: Complex conditional logic implementation  
// **Key Concepts**: Boolean algebra, compound conditions, gas optimization    

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Comparisons{
    function max(uint x, uint y, uint z) public pure returns(uint){
        if(x>y && x>z){
            return x;
        }else if (y>x && y>z) return y;
        else return z;
    }
}
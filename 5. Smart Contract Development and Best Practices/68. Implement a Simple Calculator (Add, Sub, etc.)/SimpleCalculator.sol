// ### 68. Implement a Simple Calculator (Add, Sub, etc.)  
//    **Description**: Arithmetic operations in smart contracts.  
//    **Key Concepts**: Safe math, function overloading, pure functions.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Math{
    function add(uint x,uint y) internal pure returns(uint){
        return x+y;
    }
    function add(uint x,uint y, uint z) internal pure returns(uint){
        return x+y+z;
    }
    function sub(uint x,uint y) internal pure returns(uint){
        return x-y;
    }
    function mul(uint x,uint y) internal pure returns(uint){
        return x*y;
    }
    function div(uint x,uint y) internal pure returns(uint){
        return x/y;
    }
}

contract SimpleCalculator {
   using Math for uint;
   function maths() public pure returns(uint){
    return Math.add(10,5,15);
   }

}
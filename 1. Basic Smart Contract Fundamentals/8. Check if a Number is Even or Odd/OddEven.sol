// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OddEven{
//Returns `true` if the input is even, `false` otherwise.  
    function check(uint _num) public pure returns(bool){
        if(_num % 2 == 0 ) return true; else return false;
    }
}
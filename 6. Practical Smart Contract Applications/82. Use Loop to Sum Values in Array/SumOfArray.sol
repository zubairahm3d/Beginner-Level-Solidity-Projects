// ### 82. Use Loop to Sum Values in Array  
// **Description**: Array aggregation function  
// **Key Concepts**: Iteration, gas limits, batch processing  
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SumOfArray{
    uint[] private arr;
    function addToArray(uint x) public{
        arr.push(x);
    }
    function sumOfArray() public view returns(uint){
        uint sum=0;
        for(uint i=0;i<arr.length;i++){
            sum+=arr[i];
        }
        return sum;
    }
}
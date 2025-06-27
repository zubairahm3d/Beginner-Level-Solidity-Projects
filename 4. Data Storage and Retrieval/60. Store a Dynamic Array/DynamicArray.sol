// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArr{
    uint[] private arr;

    function addToArray(uint _number) public{
        arr.push(_number);
    }
    function removeFromArray()public{
        arr.pop();
    }
    function getArray() public view returns(uint[] memory){
        return arr;
    }

}
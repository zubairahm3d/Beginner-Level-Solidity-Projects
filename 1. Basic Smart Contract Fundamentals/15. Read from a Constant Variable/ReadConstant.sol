// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constant {
    uint private constant MAX_VALUE = 10;  // Change private to public if no getter is there.. 

    function readConstant() public pure returns (uint) {
        return MAX_VALUE;
    }
}

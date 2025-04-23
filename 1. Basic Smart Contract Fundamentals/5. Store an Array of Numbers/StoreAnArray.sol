// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StoreAnArray {

    uint len = 5;
    uint[] public numbers;  

    constructor() {
        numbers = new uint[](len);
    }

    function StoreArray(uint[] memory _numbers) public {
        require(_numbers.length <= len, "Input array exceeds predefined length");
        for (uint i = 0; i < _numbers.length; i++) {
            numbers[i] = _numbers[i];
        }
    }

    function getArray() public view returns(uint[] memory) {
        return numbers;
    }
}

// ### 80. Add/Remove Items from an Array  
// **Description**: Dynamic array manipulation  
// **Key Concepts**: Array management, gas costs, deletion patterns  
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Numbers {
    uint[] private numbers;

    function addNumber(uint x) public {
        numbers.push(x);
    }

    function removeNumber(uint pos) public {
        require(pos < numbers.length, "Invalid index");
        numbers[pos] = numbers[numbers.length - 1]; // swap
        numbers.pop(); // remove last
    }

    function getAll() public view returns (uint[] memory) {
        return numbers;
    }
}

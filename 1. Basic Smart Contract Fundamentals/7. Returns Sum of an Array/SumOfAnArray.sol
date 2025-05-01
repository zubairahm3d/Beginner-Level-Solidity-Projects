// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SumOfArray{

    uint[] private numbers;
    function add(uint _num) public {
        numbers.push(_num);
    }

    function getNumbers() public view returns(uint[] memory) {
        return numbers;
    }
    
    function getSum() public view returns(uint){
        uint sum=0;
        for (uint i = 0; i < numbers.length; i++) {
            sum+=numbers[i]; 
        }
        return sum;
    }
    

}
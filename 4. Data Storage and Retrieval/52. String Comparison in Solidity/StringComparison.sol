// ### 52. String Comparison in Solidity  
//    **Description**: Implements string equality checks.  
//    **Key Concepts**: String manipulation, hashing for comparison, gas costs. 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringComparison{
    string private secret="supersecret";
    bytes32 private hashSecret;
    constructor(){
        hashSecret=keccak256(abi.encodePacked("supersecret"));
    }

    function guessTheSecret(string memory _secret) public view returns(string memory){
        bytes32  h=keccak256(abi.encodePacked(_secret));
        if(h==hashSecret){
            return "Correct!";
        }
        else{
            return "Incorrect,Guess again!";
        }
    }

}
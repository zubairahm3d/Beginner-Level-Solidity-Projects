// ### 51. Use Keccak256 Hash in Solidity  
//    **Description**: Demonstrates cryptographic hashing operations.  
//    **Key Concepts**: Hashing algorithms, data integrity, hash comparisons.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hash{
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
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract  BasicTimeLock{
    string private secret;
    uint public timestamp;
    constructor(){
        secret="zubair";
        timestamp=block.timestamp;
    }

    function getSecret() public view returns(string memory){
        if(block.timestamp-timestamp<20){
            return "early";
        }else{
            return secret;
        }
    }

}
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmitEvent{
    event basicEvent(uint id, string name);

    function setEvent(uint _id,string memory name)public{
        emit basicEvent(_id,name);
    }
}
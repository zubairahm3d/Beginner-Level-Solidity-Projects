// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract  AccessEnum{
    enum  Access{Male,Female}
    Access public gender;

    constructor(Access _gender){
        gender = _gender;
    }
}
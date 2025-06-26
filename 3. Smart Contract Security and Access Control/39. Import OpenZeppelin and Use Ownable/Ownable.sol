// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/access/Ownable.sol";

contract MyContract is Ownable {
    string private secret = "Zubair's Secret";

    constructor() Ownable(msg.sender) {}

    function getSecret() public view onlyOwner returns (string memory) {
        return secret;
    }

    function publicFunction() public pure returns (string memory) {
        return "This can be called by anyone";
    }
}

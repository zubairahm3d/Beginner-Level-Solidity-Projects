// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StoreString {

    string private name = "Zubair Ahmed";

    function store(string memory n) public {
        name = n;
    }

    function getString() public view returns (string memory) {
        return name;
    }
}

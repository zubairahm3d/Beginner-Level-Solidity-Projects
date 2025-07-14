// ### 97. Create a Contract Factory Pattern  
// **Description**: Dynamic contract deployment  
// **Key Concepts**: Factory pattern, clone contracts  

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract SecretVault {
    string private secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function getSecret() public view returns (string memory) {
        return secret;
    }
}

contract VaultFactory {
    address[] public vaults;

    function createVault(string memory _secret) public {
        SecretVault vault = new SecretVault(_secret);
        vaults.push(address(vault));
    }

    function getVault(uint index) public view returns (address) {
        require(index < vaults.length, "Invalid index");
        return vaults[index];
    }

    function totalVaults() public view returns (uint) {
        return vaults.length;
    }
}

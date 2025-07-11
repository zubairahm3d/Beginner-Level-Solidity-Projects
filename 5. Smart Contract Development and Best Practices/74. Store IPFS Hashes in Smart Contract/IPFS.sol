// ### 74. Store IPFS Hashes in Smart Contract  
//    **Description**: Links on-chain and off-chain data.  
//    **Key Concepts**: Decentralized storage, content addressing, CID storage.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IPFSStorage {
    mapping(address => string[]) public userHashes;

    function addHash(string memory ipfsHash) public {
        userHashes[msg.sender].push(ipfsHash);
    }

    function getHashes() public view returns (string[] memory) {
        return userHashes[msg.sender];
    }
}

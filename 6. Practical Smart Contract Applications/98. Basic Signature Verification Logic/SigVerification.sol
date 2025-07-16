// ### 98. Basic Signature Verification Logic  
// **Description**: Cryptographic signatures  
// **Key Concepts**: ECDSA, off-chain signing 

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

   import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
   import "@openzeppelin/contracts/utils/Address.sol";

   contract SignatureVerification {
       using ECDSA for bytes32;
       using Address for address;

       function verifySignature(
           bytes32 message,
           address signer,
           bytes memory signature
       ) public pure returns (bool) {
           bytes32 hash = message.toEthSignedMessageHash();
           address recoveredSigner = hash.recover(signature);
           return signer == recoveredSigner;
       }
   }
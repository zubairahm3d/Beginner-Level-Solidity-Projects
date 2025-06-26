// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TxLogger {
    event TransactionLogged(string name,address indexed sender, address indexed origin, uint timestamp, uint blockNumber);

    function logTx(string memory name) public {
        emit TransactionLogged(name,msg.sender, tx.origin, block.timestamp, block.number);
    }
}

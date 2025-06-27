// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionChaining {
    mapping(address => uint) public balances;

    event Deposited(address indexed user, uint amount);
    event LogAction(string message);

    // First function: logs the action
    function logDeposit() internal {
        emit LogAction("Deposit function was called.");
    }

    // Second function: calls the first
    function deposit() public payable {
        balances[msg.sender] += msg.value;

        // Chain the second function (internal call)
        logDeposit();

        emit Deposited(msg.sender, msg.value);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiSigWallet {
    struct Transaction {
        uint approvals;
        uint amount;
        address payable _address;
        bool executed;
    }

    Transaction[] public transactions;
    address[] public wallets;
    mapping(uint => mapping(address => bool)) public approved;

    constructor() {
        wallets.push(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        wallets.push(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    }

    modifier onlyOwner() {
        bool isOwner = false;
        for (uint i = 0; i < wallets.length; i++) {
            if (msg.sender == wallets[i]) {
                isOwner = true;
                break;
            }
        }
        require(isOwner, "Not a wallet owner");
        _;
    }

    function sendEther(uint amount, address _address) public onlyOwner {
        transactions.push(Transaction(0, amount, payable(_address), false));
    }

    function approve(uint pos) public onlyOwner {
        require(!approved[pos][msg.sender], "Already approved");
        require(!transactions[pos].executed, "Already executed");

        approved[pos][msg.sender] = true;
        transactions[pos].approvals++;

        if (transactions[pos].approvals >= 2) {
            transactions[pos].executed = true;
            transactions[pos]._address.transfer(transactions[pos].amount);
        }
    }

    function getAllTransactions() public view returns (Transaction[] memory) {
        return transactions;
    }

    receive() external payable {}
}

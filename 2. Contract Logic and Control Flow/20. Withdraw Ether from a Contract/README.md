# 20 – Withdraw Ether from a Contract

## 📄 Description

This smart contract demonstrates secure Ether withdrawal using access control. It allows only the contract owner to withdraw all Ether stored in the contract. It also includes functionality to receive Ether and check the contract's balance and address.

## 🧠 Key Concepts

- Address Payable
- Secure Withdrawal Pattern
- `transfer` Method
- Ownership Access Control

## 🔧 How It Works

- The contract sets the deployer as the owner in the constructor.
- It includes a `receive()` function to accept plain Ether transfers.
- The `withdrawBalance()` function allows only the owner to withdraw all Ether from the contract using `transfer`.
- Utility functions `getBalance()` and `getAddress()` are provided for inspection.

## 🛠 Functions

- `receive() external payable`: Accepts incoming Ether.
- `getBalance() public view returns (uint)`: Returns the current Ether balance of the contract.
- `getAddress() public view returns (address)`: Returns the contract’s address.
- `withdrawBalance() public`: Allows the owner to withdraw the full balance to their wallet.


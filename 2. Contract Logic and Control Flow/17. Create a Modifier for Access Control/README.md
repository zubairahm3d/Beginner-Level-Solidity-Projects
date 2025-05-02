# 17 – Access Control with Modifier in Solidity

## 📄 Description

This smart contract demonstrates how to use function modifiers to implement access control in Solidity. It restricts a withdrawal function so that only the contract owner can call it, and also ensures that sufficient funds are available before proceeding. This is a common pattern used in real-world smart contract development to enforce security and proper function usage.

## 🧠 Key Concepts

- Function Modifiers
- Access Control Patterns (`onlyOwner`)
- `require` Statements
- State Validation

## 🔧 How It Works

- The contract stores the deploying address as the `owner` in the constructor.
- A custom modifier `onlyOwner(uint _amount)`:
  - Ensures that only the owner can call certain functions.
  - Checks that the requested `_amount` to withdraw does not exceed the current fund balance.
- The `withdrawFund(uint _amount)` function:
  - Can only be called by the owner.
  - Deducts the specified `_amount` from the internal `fund` variable.

## 🔐 Access Control Logic

```solidity
require(msg.sender == owner, "Only owner can perform this operation");
require(_amount <= fund, "Insufficient funds");

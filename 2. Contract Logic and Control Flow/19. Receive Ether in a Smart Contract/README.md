# 19 – Receive Ether in a Smart Contract

## 📄 Description

This contract demonstrates how a smart contract can receive Ether. It uses a `receive()` function to accept plain Ether transfers and provides a way to check the contract's current balance.

## 🧠 Key Concepts

- Payable Functions (`receive`)
- Contract Balance Tracking
- Ether Transfers

## 🔧 How It Works

- **`receive()`**: A special function that gets triggered when Ether is sent directly to the contract without any data. It is marked as `payable`, allowing the contract to accept the Ether.
- **`getBalance()`**: Returns the total amount of Ether currently stored in the contract using `address(this).balance`.

## 🛠 Functions

- `receive() external payable`: Accepts plain Ether transfers.
- `getBalance() public view returns (uint)`: Returns the current Ether balance of the contract.


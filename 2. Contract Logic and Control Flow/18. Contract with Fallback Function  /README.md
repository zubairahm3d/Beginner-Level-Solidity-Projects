# 18 – Contract with Fallback Function in Solidity

## 📄 Description

This contract demonstrates the use of **fallback functions** in Solidity. It reacts to two scenarios:
1. **Plain Ether transfers** (with no data) via the `receive()` function.
2. **Unknown function calls** or **Ether sent with data** via the `fallback()` function.

This contract is a basic example of how to handle these two types of calls, which are crucial for managing unexpected transactions in smart contracts.

## 🧠 Key Concepts

- Fallback Functions (`receive` vs `fallback`)
- Ether Handling in Solidity
- Reacting to Unknown Function Calls
- Handling Plain Ether Transfers

## 🔧 How It Works

- **`receive()`**: This function is executed when the contract receives plain Ether with **no data** attached. It is defined as `external` and `payable`.
- **`fallback()`**: This function is executed when the contract receives data (or an unknown function call). It can also accept Ether.

Both functions are marked as `payable`, which means they are capable of receiving Ether.

## 🛠 Functions

- **`receive()`**: Triggered when Ether is sent without any data.
- **`fallback()`**: Triggered when an unknown function is called or Ether is sent with data.

---

## 🧪 Example Usage

To test this contract:
1. Send **plain Ether** to the contract address. The `receive()` function will be triggered.
2. Call the contract with **non-matching function data** or **send Ether with data**. The `fallback()` function will be triggered.

---


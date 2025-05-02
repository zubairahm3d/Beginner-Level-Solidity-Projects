# 16 – Simple If-Else Logic in Solidity

## 📄 Description

This smart contract demonstrates the use of conditional statements in Solidity. It evaluates an input number and stores a message based on whether the number is less than, equal to, or greater than 10. This project is part of a series of basic Solidity projects designed to build foundational skills in smart contract development.

## 🧠 Key Concepts

- Conditional Statements (`if`, `else if`, `else`)
- Boolean Logic
- Control Flow
- Storage and Retrieval of State Variables

## 🔧 How It Works

- The function `evaluateNumber(uint _num)` takes a number as input and:
  - Stores `"Greater than 10"` if `_num > 10`
  - Stores `"Equal to 10"` if `_num == 10`
  - Stores `"Less than 10"` if `_num < 10`
- The result can be retrieved using the `getMessage()` function.

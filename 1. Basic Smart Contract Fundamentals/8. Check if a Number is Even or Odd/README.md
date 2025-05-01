### 8. Check if a Number is Even or Odd  
**Description**: A smart contract that takes an unsigned integer as input and returns `true` if it is even, or `false` if it is odd.

---

### 🔑 Key Concepts:

- `check(uint _num)`: A public function that checks if the given number is even.
  - Uses the **modulo operator (`%`)** to determine if the number is divisible by 2.
  - Returns a boolean value: `true` if even, `false` if odd.
  - **`pure`** means the function does not read from or modify the blockchain state.

---

### 💡 Extra Notes:

- **Modulo Operator**: `_num % 2 == 0` evaluates to `true` for even numbers.
- **Gas Cost**: Being a `pure` function, `check()` is free to call externally and requires no gas unless called from another contract.
- **Boolean Return**: This is a basic example of using boolean logic in Solidity for condition checking.

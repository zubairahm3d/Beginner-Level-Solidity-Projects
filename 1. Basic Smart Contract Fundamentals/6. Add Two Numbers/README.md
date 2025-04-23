## 6. Add Two Numbers Using a Smart Contract  
**Description**: A simple smart contract that adds two numbers and returns the sum. The function is pure, meaning it doesn't interact with or modify the blockchain state.

---

### 🔑 Key Concepts:

- `contract AddTwoNumbers`: Defines the smart contract named `AddTwoNumbers`.

- `add(uint _a, uint _b) public pure returns (uint)`: A public function that takes two unsigned integers as input, adds them, and returns the sum.  
  - **`pure`** indicates that the function does not read from or modify the blockchain state.  
  - **`returns (uint)`** specifies that the function returns an unsigned integer.

---

### 💡 Extra Notes:

- **Pure Functions**: The function `add` is marked as `pure` because it only performs a mathematical operation and does not interact with the blockchain's state.
  
- **Arithmetic Operations**: This contract demonstrates a basic arithmetic operation (addition) in Solidity.

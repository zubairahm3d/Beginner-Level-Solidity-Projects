## 7. Store and Sum an Array of Numbers Using a Smart Contract  
**Description**: A smart contract that allows users to add unsigned integers to a dynamic array, retrieve the stored array, and calculate the total sum of its elements.

---

### 🔑 Key Concepts:

- `uint[] private numbers`: A dynamic array used to store unsigned integers. It is marked `private`, meaning it cannot be accessed directly from outside the contract, but can be exposed via functions.

- `add(uint _num)`: A public function that allows anyone to append a new number to the `numbers` array.  
  - **Modifies state** and costs gas when called.

- `getNumbers() public view returns (uint[] memory)`: Returns the full array of stored numbers.  
  - **`view`** indicates it reads from the blockchain state without modifying it.  
  - Returns a dynamic array in memory.

- `getSum() public view returns (uint)`: Iterates through the stored array and returns the total sum of all elements.  
  - Also a **`view`** function since it only reads from state.

---

### 💡 Extra Notes:

- **Dynamic Arrays**: This contract uses a dynamic array, which means its size can grow indefinitely based on user input.

- **Gas Consideration**: While `add()` uses gas, `getNumbers()` and `getSum()` are free when called externally (off-chain via a frontend or script).

- **Looping in Solidity**: The `getSum()` function uses a `for` loop to aggregate the values. Be cautious with very large arrays, as looping can become gas-intensive.

- **Encapsulation**: The array is marked `private`, which promotes encapsulation and forces access through controlled functions.


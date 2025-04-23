## 2. Store Number Smart Contract  
**Description**: A smart contract that stores a single number in the contract's state and allows it to be retrieved using a getter function.

---

### 🔑 Key Concepts:

- `contract StoreNumber`: Defines the smart contract named `StoreNumber`.

- `uint private number`: Declares a private unsigned integer stored on the blockchain.

- `storeNumber(uint n) public`: A public function that sets the value of the stored number.

- `getNumber() public view returns (uint)`: A public view function that retrieves the current stored number without modifying the state.

---

### 🧠 Solidity Keyword – `view`

- The `view` keyword in Solidity is used to indicate that a function **reads from the blockchain state** but **does not modify it**.
- Functions marked with `view` **do not cost gas** when called externally (e.g., from a frontend or using Remix).
- Useful for creating **read-only getter functions** that safely expose private or internal contract data.

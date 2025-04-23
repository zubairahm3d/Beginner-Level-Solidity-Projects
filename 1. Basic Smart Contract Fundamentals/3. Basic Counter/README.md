## 3. Basic Counter (Increment / Decrement)
**Description**: A smart contract that implements a simple counter with functions to increment and decrement its value.

---

### 🔑 Key Concepts:

- `contract BasicCounter`: Defines the smart contract named `BasicCounter`.

- `uint private number`: Declares a private unsigned integer stored on the blockchain as the counter.

- `increment() public`: A public function that increases the counter value by 1. This modifies the blockchain state and costs gas.

- `decrement() public`: A public function that decreases the counter value by 1. Also modifies the state and costs gas.  
  - ⚠️ Note: Solidity version 0.8.0 and above has built-in underflow protection. This means trying to decrement below 0 will automatically cause the transaction to revert.

- `getNumber() public view returns (uint)`: A view function that retrieves the current counter value without modifying the state. Calling this function externally does **not** cost gas.

---

### 💡 Extra Notes:

- **State Modification**: Both `increment()` and `decrement()` change the contract’s state and thus require gas to execute.

- **Transaction Costs**: Functions that write to the blockchain require a transaction and gas fee. `getNumber()` is free to call from outside the blockchain.

- **Function Calls**: Public functions allow users and external contracts to interact with the contract.

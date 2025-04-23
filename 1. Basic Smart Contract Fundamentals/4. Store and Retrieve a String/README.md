## 4. Store and Retrieve a String  
**Description**: A smart contract that stores a string in the blockchain's storage and allows it to be retrieved through a getter function.

---

### 🔑 Key Concepts:

- `contract StoreString`: Defines the smart contract named `StoreString`.

- `string private name = "Zubair Ahmed"`: Declares a private string stored in contract storage with an initial value.

- `store(string memory n) public`: A public function that stores a new string in the contract’s state.  
  - 🔸 Uses the `memory` keyword to indicate the string is passed as a temporary value.

- `getString() public view returns (string memory)`: A public view function that retrieves the currently stored string.  
  - 🔸 The `view` keyword ensures the function doesn’t modify the blockchain state.  
  - 🔸 `returns (string memory)` returns a copy of the string stored in memory.

---

### 💡 Extra Notes:

- **String Storage**: Strings are dynamic data types and are stored in contract storage, which persists on the blockchain.

- **Gas Costs for Dynamic Data**: Writing or updating strings costs more gas compared to primitive fixed-size types due to dynamic memory allocation and storage operations.

- **Function Visibility**: Both `store` and `getString` are `public`, allowing external contracts and users to interact with them.

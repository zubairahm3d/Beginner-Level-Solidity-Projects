### 9. Contract with Multiple Public Variables  
**Description**: A smart contract that declares multiple public state variables, allowing them to be accessed directly through automatically generated getter functions.

---

### 🔑 Key Concepts:

- `uint public a = 5;`, `uint public b = 43;`: Public state variables. Solidity automatically creates getter functions for each of them (`a()` and `b()`).

- `get() public view returns (uint, uint)`: A custom getter function that returns both `a` and `b` in a single call. Useful when both values are frequently needed together.

---

### 💡 Extra Notes:

- **Auto-generated Getters**: In Solidity, marking a state variable as `public` creates a getter function with the same name as the variable.

- **Redundant Get Function**: While `get()` is not required, it can reduce the number of external calls when both values are needed together.

- **State Mutability**: The `get()` function is marked `view` because it reads state without modifying it.

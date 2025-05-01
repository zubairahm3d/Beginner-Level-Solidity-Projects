### 13. Store and Retrieve a Boolean  
**Description**: Stores a boolean flag with toggle and check functionality. This simple example demonstrates how to manage a boolean state variable within a smart contract.

---

### 🔑 Key Concepts:

- `bool flag`: A private boolean variable that holds the current state (true/false).
- `setFlag()`: A public function to manually set the boolean flag to a desired value.
- `toggleFlag()`: A public function that flips the boolean flag. If it was `true`, it becomes `false`, and vice versa.
- `getFlag()`: An external view function that returns the current state of the flag.

---

### 💡 Extra Notes:

- **Boolean State**: Booleans are useful for representing on/off, true/false, or yes/no states in contracts.
- **State Visibility**: The `flag` variable is marked `private`, ensuring it can't be directly accessed externally — it must be accessed via `getFlag()`.
- **Toggling Logic**: The toggle operation uses `flag = !flag`, a standard Solidity shorthand for flipping a boolean.
- **Gas Efficiency**: `getFlag()` is a `view` function, making it gas-free when called externally.

### 15. Read from a Constant Variable  
**Description**: Demonstrates how to declare and read a constant variable in Solidity. This is useful for values that never change and need to be accessed frequently without incurring storage gas costs.

---

### 🔑 Key Concepts:

- `constant` Variables: A `constant` is an immutable value set at compile time. It cannot be changed after deployment.
- `readConstant()`: A `pure` function that returns the value of the constant. Since it neither reads from nor writes to storage, it is gas-free when called externally.
- `private constant`: The `MAX_VALUE` variable is marked `private`, so it cannot be accessed directly and requires a custom getter.

---

### 💡 Extra Notes:

- **Gas Efficiency**: Reading from a constant variable is extremely gas-efficient, as the value is embedded directly in the bytecode.
- **Visibility**: If the variable is `public`, Solidity auto-generates a getter. If `private`, you'll need to provide a getter manually.
- **Best Practices**: Use `constant` for fixed values like `MAX_SUPPLY`, `VERSION`, or configuration flags that should not be modified.
# Basic Smart Contract Fundamentals (1-15)

A collection of foundational smart contract examples to learn Solidity and Ethereum development. Each example demonstrates a core concept, from storing data to working with structs and mappings.

---

## Prerequisites
- Basic understanding of blockchain and Ethereum.
- Familiarity with programming (JavaScript/TypeScript helpful).
- Tools: [Remix IDE](https://remix.ethereum.org/) or Hardhat/Truffle for local development.
- Solidity version: `^0.8.0` (unless specified otherwise).

---

## Projects

### 1. Hello World Smart Contract  
   **Description**: A minimal smart contract with a function that returns `"Hello, World!"`.  
   **Key Concepts**: Contract structure, function visibility (`pure`), string return types.  

### 2. Smart Contract to Store a Number  
   **Description**: Stores a single number in the contract's state and allows retrieval.  
   **Key Concepts**: State variables, getter functions, `public` visibility.  

### 3. Basic Counter (Increment / Decrement)  
   **Description**: A counter with functions to increment/decrement its value.  
   **Key Concepts**: State modification, transaction costs, function calls.  

### 4. Store and Retrieve a String  
   **Description**: Stores a string in contract storage and provides a getter.  
   **Key Concepts**: String storage, gas costs for dynamic data.  

### 5. Store an Array of Numbers  
   **Description**: Manages an array of integers with add/retrieve functionality.  
   **Key Concepts**: Dynamic arrays, gas inefficiency with large arrays.  

### 6. Add Two Numbers Using a Smart Contract  
   **Description**: Pure function that computes the sum of two inputs.  
   **Key Concepts**: `pure` functions, arithmetic operations.  

### 7. Return Sum of an Array  
   **Description**: Calculates the sum of all elements in a stored array.  
   **Key Concepts**: Loops (`for`), gas limits with iterations.  

### 8. Check if a Number is Even or Odd  
   **Description**: Returns `true` if the input is even, `false` otherwise.  
   **Key Concepts**: Modulo operator (`%`), conditional logic.  

### 9. Contract with Multiple Public Variables  
   **Description**: Exposes multiple public state variables (auto-generated getters).  
   **Key Concepts**: Public variables, implicit getter functions.  

### 10. Basic Struct with Person Info  
   **Description**: Defines a `Person` struct (name, age) and stores an instance.  
   **Key Concepts**: Structs, custom data types.  

### 11. Array of Structs (e.g. Users)  
   **Description**: Manages an array of `User` structs with add/fetch functions.  
   **Key Concepts**: Struct arrays, storage costs.  

### 12. Simple Mapping of ID to Names  
   **Description**: Maps IDs (integers) to names (strings) for efficient lookup.  
   **Key Concepts**: Mappings, key-value pairs.  

### 13. Store and Retrieve a Boolean  
   **Description**: Stores a boolean flag with toggle/check functionality.  
   **Key Concepts**: Boolean state, simple toggling.  

### 14. Add Two Structs Together  
   **Description**: Combines two structs (e.g., `Point {x, y}`) into one.  
   **Key Concepts**: Struct operations, additive logic.  

### 15. Read from a Constant Variable  
   **Description**: Declares a constant (e.g., `MAX_VALUE`) and reads it.  
   **Key Concepts**: `constant` variables, zero-gas reads.  

---

## Notes
- **Gas Costs**: Operations like array manipulations or loops can be expensive. Optimize for storage.
- **Visibility**: Use `public`/`private` keywords to control function/variable access.
- **Structs vs. Mappings**: Structs are readable but costly; mappings are gas-efficient for lookups.
- **Constants**: Use `constant` for values that never change (saves gas).
# Contract Logic and Control Flow (16-30)

A collection of intermediate smart contract projects focusing on control structures, function modifiers, Ether handling, and event logging. These projects build on foundational concepts to introduce more complex contract behaviors.

---

## Prerequisites
- Completion of basic smart contract fundamentals (1-15)
- Understanding of state variables and function types
- Familiarity with Ether units (wei, gwei, ether)
- Basic knowledge of contract interactions
- Solidity version: `^0.8.0` (unless specified otherwise)

---

## Projects

### 16. Implement a Simple If-Else Logic  
   **Description**: A contract demonstrating conditional execution based on input values.  
   **Key Concepts**: Conditional statements, boolean logic, control flow.  

### 17. Create a Modifier for Access Control  
   **Description**: Implements a custom modifier to restrict function access (e.g., onlyOwner).  
   **Key Concepts**: Function modifiers, access control patterns, `require` statements.  

### 18. Contract with Fallback Function  
   **Description**: A contract that reacts to plain Ether transfers or unknown function calls.  
   **Key Concepts**: Fallback functions, `receive` vs `fallback`, Ether handling.  

### 19. Receive Ether in a Smart Contract  
   **Description**: Basic contract that can accept Ether deposits.  
   **Key Concepts**: Payable functions, contract balance, Ether transfers.  

### 20. Withdraw Ether from a Contract  
   **Description**: Implements secure Ether withdrawal patterns.  
   **Key Concepts**: Address payable, transfer/send methods, withdrawal security.  

### 21. Payable Function Example  
   **Description**: Function that requires Ether payment to execute.  
   **Key Concepts**: Value handling, `msg.value`, payment verification.  

### 22. Deploy a Contract with Initial Value  
   **Description**: Constructor that initializes contract state at deployment.  
   **Key Concepts**: Constructor parameters, initial state setup.  

### 23. Pass a Struct to Constructor  
   **Description**: Initializes contract with structured data at deployment.  
   **Key Concepts**: Struct initialization, constructor arguments.  

### 24. Return Struct Data from a Function  
   **Description**: Function that returns a complete struct.  
   **Key Concepts**: Struct returns, memory vs storage, data packaging.  

### 25. Emit a Basic Event  
   **Description**: Contract that logs occurrences to the blockchain.  
   **Key Concepts**: Event declaration, `emit` keyword, log topics.  

### 26. Listen for an Event in Frontend  
   **Description**: Companion to #25 showing event subscription in web3.js/ethers.js.  
   **Key Concepts**: Event filters, DApp integration, asynchronous listeners.  

### 27. Create a Smart Contract Wallet  
   **Description**: Basic multi-signature wallet functionality.  
   **Key Concepts**: Ether custody, authorization patterns, multi-sig basics.  

### 28. Simple Voting Contract (no validations)  
   **Description**: Basic voting mechanism without security checks.  
   **Key Concepts**: Vote tallying, state tracking, simple governance.  

### 29. Mapping with Address to Balance  
   **Description**: Tracks balances for multiple addresses efficiently.  
   **Key Concepts**: Address mappings, balance accounting, lookup patterns.  

### 30. Store User Info by Address  
   **Description**: Associates structured user data with Ethereum addresses.  
   **Key Concepts**: Address-indexed structs, user profiles, data association.  

---

## Notes
- **Security**: Pay special attention to withdrawal patterns (reentrancy risks)
- **Gas Efficiency**: Events are cheaper than storage but have size limits
- **Visibility**: Default to `private` for state variables unless external access is needed
- **Error Handling**: Use `require()` for input validation and access control
- **Ether Handling**: Always verify `msg.value` before processing payments
- **Frontend Integration**: Events are primary method for DApp state synchronization


### 11. Array of Structs (e.g. Users)  
**Description**: Manages an array of `User` structs, allowing you to add new users and retrieve all stored users. This example demonstrates how to use dynamic arrays of structs to store multiple data entries.

---

### 🔑 Key Concepts:

- `struct User`: A custom data type that groups related fields for each user. It includes:
  - `string name`: The user’s name.
  - `uint rollNo`: A unique identifier (e.g. student roll number).
  - `uint marks`: Marks obtained by the user.

- `addUser()`: A public function that takes `name`, `rollNo`, and `marks` as input and adds a new `User` struct to the array.

- `getUsers()`: A public `view` function that returns the entire array of `User` structs currently stored in the contract.

---

### 💡 Extra Notes:

- **Struct Arrays**: This contract shows how to work with dynamic arrays of structs, which are useful for storing multiple records in decentralized applications.
- **Storage Cost Awareness**: Adding to the `users` array modifies the blockchain state, so `addUser()` consumes gas.
- **Data Retrieval**: `getUsers()` is a `view` function, meaning it doesn’t consume gas when called externally and provides full visibility into stored data.
- **Scalability Consideration**: In real-world applications, retrieving large arrays from smart contracts can become expensive or inefficient — consider pagination or indexing for large datasets.

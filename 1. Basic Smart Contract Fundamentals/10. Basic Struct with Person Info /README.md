### 10. Basic Struct with Person Info  
**Description**: Defines a `Person` struct with `name` and `age` attributes and stores an instance of it. The contract allows for setting and retrieving the person’s information.

---

### 🔑 Key Concepts:

- `struct person`: A custom data type that defines the structure of a person. It includes:
  - `string name`: The person's name.
  - `uint age`: The person's age.

- `setPerson()`: A public function that sets the `person` struct `p` with a name and age.

- `getPerson()`: A public `view` function that retrieves the `person` struct `p` and returns its details.

---

### 💡 Extra Notes:

- **Custom Data Types**: This contract demonstrates the use of `struct` to create custom data types, which are useful for grouping related data.
- **Structs in Solidity**: Structs can be used to represent more complex data structures and are commonly used for creating records in decentralized applications.
- **Memory vs Storage**: The `getPerson()` function uses `memory` to return the struct. This avoids modifying the state and makes the function gas-efficient when called externally.

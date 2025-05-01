### 12. Simple Mapping of ID to Names  
**Description**: Maps unique integer IDs (e.g., student roll numbers) to names using Solidity's built-in `mapping` type. This allows for efficient key-value lookups where each ID is linked to a name.

---

### 🔑 Key Concepts:

- `mapping(uint => string)`: Creates a key-value store where a `uint` (like a roll number) is mapped to a `string` (like a name).
- `setMap()`: A public function that stores a name against a unique roll number.
- `get()`: A public view function that retrieves the name mapped to a given roll number.

---

### 💡 Extra Notes:

- **Efficient Lookups**: Mappings offer constant-time (O(1)) lookups, making them ideal for associative storage.
- **Default Values**: If a key does not exist, mappings return the default value of the value type (in this case, an empty string `""`).
- **No Key Iteration**: Mappings cannot be iterated or queried for all keys — they are not enumerable.
- **Private Keyword**: Although `students` is marked `private`, it can still be accessed through the `get()` function, which provides controlled external visibility.
- **Gas Costs**: `setMap()` modifies the blockchain state and costs gas, while `get()` is a free `view` function when called externally.


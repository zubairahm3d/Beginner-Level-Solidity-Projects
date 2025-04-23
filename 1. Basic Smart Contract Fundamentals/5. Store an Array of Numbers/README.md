## 5. Store an Array of Numbers  
**Description**: A smart contract that manages an array of integers, providing functionality to add new values to the array and retrieve it.

---

### 🔑 Key Concepts:

- `contract StoreAnArray`: Defines the smart contract named `StoreAnArray`.

- `uint[] public numbers`: Declares a dynamic array of unsigned integers to store the numbers. This array is publicly accessible.

- `StoreArray(uint[] memory _numbers) public`: A public function that stores an array of integers in the `numbers` array.  
  - The input array is passed as a `memory` array to temporarily store values within the function execution.

- `getArray() public view returns(uint[] memory)`: A public view function that retrieves the current array stored in `numbers` without modifying the state.

---

### 💡 Extra Notes:

- **Dynamic Arrays**: The contract uses a dynamic array (`uint[]`), which means the array size is not fixed and can be resized as needed.

- **Gas Inefficiency with Large Arrays**: Storing large arrays on-chain can be **costly** in terms of gas. Each element added to the array requires a write operation to blockchain storage, which may become inefficient as the array grows.
  - Consider limiting the size of the array or splitting data storage across multiple contracts in large-scale applications.

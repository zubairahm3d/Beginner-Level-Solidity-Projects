# 24 - Return Struct Data from a Function

## 📄 Description

This contract demonstrates how to return a **struct** from a function in Solidity. The contract defines a `User` struct and provides two functions: one that returns the struct from memory and another that shows how to access struct data from storage. This is useful for understanding how data is returned from functions in Solidity, including the distinction between memory and storage.

## 🧠 Key Concepts

- **Structs**: Custom data types that can store multiple values.
- **Memory vs Storage**: Understanding how data is stored (in memory or storage) and how it impacts the return of data from functions.
- **Function Return Types**: Returning a struct from a function using `memory` or `storage`.
- **Internal Functions**: Functions that operate on storage directly and can be used within other functions.

## 🔧 How It Works

1. **Constructor**: The contract's constructor initializes the `User` struct with a `username` and `password`.

2. **`getUser()`**: This function returns the `User` struct from **memory**. It is a public function and is designed for external calls. This means the struct's data is returned temporarily without storing it permanently in the blockchain's storage.

3. **`getUserFromStorage()`**: This function returns the `User` struct directly from **storage**. It's an internal function and demonstrates how you can access struct data stored on the blockchain.

4. **`testGetUserFromStorage()`**: This function is a helper function to demonstrate the use of `getUserFromStorage()` by calling it and returning specific fields (username and password) for testing purposes.

## ⚙️ Contract Usage

1. **Deploy the Contract**: When deploying the contract, provide a `User` struct with `username` and `password` as constructor arguments. The contract will store the struct in the state.

2. **Get User Data**:
   - Call `getUser()` to get the entire `User` struct returned from memory.
   - Call `testGetUserFromStorage()` to test how struct data is returned from storage.

3. **Access Storage Directly**:
   - Use `getUserFromStorage()` internally to access the struct directly from storage (this can be used by other internal functions).

## 📌 Example Interaction

- **Deploy the Contract**:
  - Deploy with a `User` struct, passing `username` and `password` as parameters.

- **Get User**:
  - Call `getUser()` to retrieve the complete `User` struct from memory.

- **Test Struct from Storage**:
  - Call `testGetUserFromStorage()` to test retrieval of struct data directly from storage (this will return `username` and `password`).

## 🔒 Security Considerations

- **Access Control**: There is no access control for `getUser()` as it is a public function, but in real-world applications, you may want to restrict access using modifiers such as `onlyOwner`.
- **Efficient Data Handling**: Returning structs from memory is recommended for public functions, as it doesn't affect the blockchain's storage.

# 23. Pass a Struct to Constructor

## 📄 Description

This contract demonstrates how to initialize a contract with structured data (a `User` struct) at the time of deployment. The `User` struct is passed as an argument to the constructor and stored in the contract's state. The contract includes functionality to retrieve the stored struct data securely, accessible only by the contract's owner.

## 🧠 Key Concepts

- **Struct Initialization**: Passing a struct to a constructor.
- **Constructor Arguments**: Using constructor parameters for state initialization.
- **Access Control**: Restricting access to the data using a modifier (`onlyOwner`).

## 🔧 How It Works

- The contract defines a `User` struct with two fields: `username` and `password`.
- The constructor accepts a `User` struct as an argument and initializes the contract's `user` state with the provided data.
- The `onlyOwner` modifier ensures that only the contract's owner can access specific functions.
- The `getUser()` function allows the owner to retrieve the stored `User` struct.

## 📝 Functions

- `constructor(User memory _user)`: Initializes the contract with the provided `User` struct.
- `getUser()`: Returns the stored `User` struct, only accessible by the owner of the contract.


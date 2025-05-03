# 22 - Deploy a Contract with Initial Value

## 📄 Description

This contract demonstrates how to deploy a smart contract with an initial state set through the constructor. The constructor takes a parameter that initializes the contract state when it is deployed. This contract can store and retrieve a value, and it allows for the value to be updated later.

## 🧠 Key Concepts

- **Constructor Parameters**: Using the constructor to initialize contract state upon deployment.
- **State Variables**: Storing values in the contract's state.
- **Initial State Setup**: Ensuring the contract starts with a predefined state.

## 🔧 How It Works

1. **Constructor**: The contract constructor accepts an initial value, `_initialValue`, and sets it to the `value` state variable during deployment.

2. **`getValue()`**: A public function that retrieves the current `value` stored in the contract.

3. **`setValue(uint _newValue)`**: A public function that allows the contract's value to be updated after deployment.

## ⚙️ Contract Usage

1. **Deploy the Contract**: When deploying the contract, pass an initial integer value (e.g., `100`) to the constructor.
   
2. **Retrieve the Value**: After deployment, call `getValue()` to check the current value stored in the contract.

3. **Update the Value**: Call `setValue()` with a new integer value to update the stored value.

## 📌 Example Interaction

- **Deploy the Contract**: Deploy the contract with an initial value, such as `100`.
   - Example: `DeployWithInitialValue(100)`
   
- **Get Value**: 
   - Call `getValue()` to see the contract's current value.
   
- **Update Value**:
   - Call `setValue(200)` to update the value to `200`.

## 🔒 Security Considerations

- The contract allows anyone to update the value with the `setValue()` function. Depending on your use case, you may want to add access control mechanisms, like `onlyOwner` modifier, to restrict who can update the value.


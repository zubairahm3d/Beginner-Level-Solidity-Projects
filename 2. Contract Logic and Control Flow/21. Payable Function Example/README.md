# Payable Function Example

## 📄 Description

This contract demonstrates a simple example of a **payable function** in Solidity. It requires the sender to send Ether in order to execute specific functions. The contract can accept Ether, allow only the owner to withdraw the balance, and ensures that an Ether payment is made when calling the `payAction` function.

## 🧠 Key Concepts

- **Payable Functions**: Functions that can receive Ether.
- **Value Handling**: Working with Ether transfers using `msg.value`.
- **Payment Verification**: Ensuring that a certain amount of Ether is sent with function calls.
- **Access Control**: Restricting access to certain functions to only the owner of the contract.

## 🔧 How It Works

1. **Constructor**: Sets the owner of the contract to the address that deploys it.

2. **`receive()` Function**: This is a fallback function that allows the contract to receive Ether.

3. **`payAction()`**: A payable function that requires the sender to send at least 1 wei (Ether). If the condition is met, the contract sets the `payed` variable to `true`.

4. **`getEth()`**: A public function that returns the current balance of Ether held by the contract.

5. **`withdrawEther()`**: A function that allows only the owner to withdraw the entire balance of the contract. The owner can execute this function, and it will transfer all the Ether to the owner's address.

## ⚙️ Contract Usage

1. **Deploy the Contract**: Once deployed, the deployer is set as the owner.

2. **Send Ether**: You can send Ether to the contract by calling `payAction()` with a value greater than 0. This marks the payment as successful.

3. **Check Balance**: Call `getEth()` to see the current contract balance.

4. **Withdraw Ether**: The owner can withdraw the full balance by calling `withdrawEther()`.

## 📌 Example Interaction

- **Send Ether**: 
   - Call `payAction()` with Ether (greater than 0).
   
- **Get Balance**:
   - Call `getEth()` to see the contract's current Ether balance.

- **Withdraw Ether**:
   - The owner can call `withdrawEther()` to withdraw the full balance.

## 🔒 Security Considerations

- **Owner Access Control**: The `withdrawEther()` function is restricted to only the owner using the `onlyOwner` modifier.
- **Payment Validation**: The contract ensures that a positive amount of Ether is sent when calling `payAction()`.

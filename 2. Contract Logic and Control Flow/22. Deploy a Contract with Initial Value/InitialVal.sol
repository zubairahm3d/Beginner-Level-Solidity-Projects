// ### 22. Deploy a Contract with Initial Value  
//    **Description**: Constructor that initializes contract state at deployment.  
//    **Key Concepts**: Constructor parameters, initial state setup.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DeployWithInitialValue {

    uint public value; // State variable to store the initial value

    // Constructor that initializes the contract state
    constructor(uint _initialValue) {
        value = _initialValue;
    }

    // Function to retrieve the current value
    function getValue() public view returns (uint) {
        return value;
    }

    // Function to update the value
    function setValue(uint _newValue) public {
        value = _newValue;
    }
}

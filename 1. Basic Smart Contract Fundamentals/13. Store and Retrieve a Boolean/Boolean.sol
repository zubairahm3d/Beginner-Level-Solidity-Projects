// ### 13. Store and Retrieve a Boolean  
//    **Description**: Stores a boolean flag with toggle/check functionality.  
//    **Key Concepts**: Boolean state, simple toggling.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Boolean{
    bool private flag;

    function setFlag(bool _flag)public {
        flag=_flag;
    }

    function toggleFlag() public {
        flag = !flag;
    }
    
    function getFlag() external view returns(bool){  
        return flag;
    }
}
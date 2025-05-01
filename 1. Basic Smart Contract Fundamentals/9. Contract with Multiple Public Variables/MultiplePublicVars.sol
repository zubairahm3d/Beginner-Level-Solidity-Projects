// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//### 9. Contract with Multiple Public Variables  
  // **Description**: Exposes multiple public state variables (auto-generated getters).  
   //**Key Concepts**: Public variables, implicit getter functions.  

   contract MultiplePublicVars{
    uint public a=5;
    uint public b=43;

    function get() public view returns(uint,uint){
        return (a,b);
    }
   }
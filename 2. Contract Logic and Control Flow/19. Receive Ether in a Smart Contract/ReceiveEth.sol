// ### 19. Receive Ether in a Smart Contract  
//    **Description**: Basic contract that can accept Ether deposits.  
//    **Key Concepts**: Payable functions, contract balance, Ether transfers.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiveEther{

    //receive ether
    receive() external payable { }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}


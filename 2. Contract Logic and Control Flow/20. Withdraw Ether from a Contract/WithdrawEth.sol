// ### 20. Withdraw Ether from a Contract  
//    **Description**: Implements secure Ether withdrawal patterns.  
//    **Key Concepts**: Address payable, transfer/send methods, withdrawal security.  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WithdrawEther{

    address public owner;
    constructor(){
        owner=msg.sender;
    }
    //receive ether
    receive() external payable { }

    //this gets the address of the contract
    function getBalance() public view returns(uint){
        return address(this).balance;
    }


    //this returns the address of the contract.
    function getAddress() public view returns(address){
        return address(this);
    }

    function withdrawBalance() public{
        require(owner==msg.sender,"You are not authorized");

        //withdraws all the balance from contract to owner.
        payable(owner).transfer(address(this).balance);
    }
}


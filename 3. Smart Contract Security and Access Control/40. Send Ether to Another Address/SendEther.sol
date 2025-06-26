// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// ### 40. Send Ether to Another Address  
//    **Description**: Implements secure Ether transfer functionality.  
//    **Key Concepts**: Value transfers, address payable, send vs transfer.  

contract sendEther{


    // function getEther() public payable {}
    function balanceOf() public view returns(uint){return address(this).balance;}
    function sendEtherSend(address payable _address) public payable {
        _address.send(address(this).balance);
    }
    function sendEtherTransfer(address payable _address) public payable{
        _address.transfer(address(this).balance);
    }
}
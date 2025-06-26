// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract  SelfDestructor{

    address payable owner;

    receive() external payable { }

    function getMoney() public payable{}
    function destructThisContract() public {
        selfdestruct(payable(msg.sender));
    }

    function balanceOf() public view returns(uint){
        return address(this).balance;   
    }


}

//needs to implement accesscontrol, here anyone can call use the function to selfdestruct.
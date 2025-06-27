// ### 47. Create and Use an Interface  
//    **Description**: Defines and implements a contract interface.  
//    **Key Concepts**: Abstract contracts, interface declaration, cross-contract calls.  
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IHelloWorld{
    function sayHelloWorld() external view returns(string memory);

}

contract HelloWorld is IHelloWorld{
    function sayHelloWorld() public virtual override view returns(string memory){
        return  "Hello World!";
    }
}

contract callHelloWorld{
    IHelloWorld obj;
    constructor () {
        obj = new HelloWorld();
    }
    function sayHelloWorld() public view returns(string memory){
            return  obj.sayHelloWorld();
        
    }

}
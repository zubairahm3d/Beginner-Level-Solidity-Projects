// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//### 10. Basic Struct with Person Info  
   //**Description**: Defines a `Person` struct (name, age) and stores an instance.  
   //**Key Concepts**: Structs, custom data types.  

   contract Person{
    struct person{
        string name;
        uint age;
    }
    person p;

    function setPerson() public {
        p=person("Zubair Ahmed", 25);

    }
    function getPerson() public view returns(person memory){
        return p;
    }
   }
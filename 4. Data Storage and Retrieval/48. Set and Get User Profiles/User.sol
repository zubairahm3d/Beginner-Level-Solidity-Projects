// ### 48. Set and Get User Profiles  
//    **Description**: Manages structured user data with CRUD operations.  
//    **Key Concepts**: Struct storage, data encapsulation, profile management.  


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserCRUD{
    struct User{
        string name;
        uint256 age;
    }
    mapping(address=>User) private users;

    function createUser(address _address,string memory name,uint age) public {
        users[_address].name = name;
        users[_address].age=age;
    }

    function getUser(address _address) public view returns(string memory,uint){
        return (users[_address].name,users[_address].age);
    }
    function updateUser(address _address, string memory name, uint age) public {  

        users[_address].name = name;
        users[_address].age=age;
    }

    function deleteUser(address _address) public{
        delete users[_address];
    }

}
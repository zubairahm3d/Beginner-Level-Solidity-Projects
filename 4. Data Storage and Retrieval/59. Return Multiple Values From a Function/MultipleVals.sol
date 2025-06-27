// ### 59. Return Multiple Values From a Function  
//    **Description**: Returns tuple-type data from functions.  
//    **Key Concepts**: Multiple returns, destructuring assignments, data packaging.  
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract User{
    struct UserStruct{
        string name;
        uint age;
    }
    UserStruct private user;
    constructor(string memory _name, uint _age){
        user.name=_name;
        user.age=_age;
    }

    function userData() internal view returns(UserStruct memory){
        return user;
    }
    function getUserData() public view returns(string memory,uint){
        UserStruct memory _user=userData();
        return (_user.name,_user.age);
    }
}
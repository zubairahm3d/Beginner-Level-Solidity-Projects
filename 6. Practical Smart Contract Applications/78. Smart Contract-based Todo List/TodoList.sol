// ### 78. Smart Contract-based Todo List  
// **Description**: On-chain task management system  
// **Key Concepts**: CRUD operations, struct arrays, state management 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToDoList{
    struct Todo{
        string task;
        bool isCompleted;
    }
    Todo[] private list;

    function addToDoList(string memory task) public {
        for(uint i=0;i<list.length;i++){
            if(keccak256(bytes(task)) == keccak256(bytes(list[i].task))){
                revert("Item already exists");
            }
        }
        list.push(Todo(task,false));
    }
    function removeToDoList(uint x) public {
        delete list[x];
    }
    function updateToDoList(uint x, string memory _newTask) public{
        list[x]=Todo(_newTask,list[x].isCompleted);
    }
    function getList() public view returns(Todo[] memory){
        return list;
    }
    function getTask(uint x) public view returns(Todo memory){
        return list[x];
    }
    function completeTask(uint x)public {
        list[x].isCompleted=true;
    } 
}
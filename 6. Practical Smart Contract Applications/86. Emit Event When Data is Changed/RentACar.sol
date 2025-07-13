// ### 86. Emit Event When Data is Changed  
// **Description**: State change notifications  
// **Key Concepts**: Event-driven architecture, change tracking  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RentACar{
    struct Car{
        string name;
        string color;
        uint price;
        bool isRented;
    }
    Car[] private cars;


    event onRent(address _address,Car _car);

    function addACar(string memory _name, string memory _color, uint _price) public{
        cars.push(Car(_name,_color,_price,false));
    }
    function showAllCars() public view returns(Car[] memory){
        return cars;
    }
    function rentACar(uint _id) public{
        require(cars[_id].isRented == false, "This Car is not Available");
        cars[_id].isRented = true;
        emit onRent(msg.sender,cars[_id]);

    }
}
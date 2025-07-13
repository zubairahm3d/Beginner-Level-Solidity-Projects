// ### 87. Use require/assert for Simple Checks  
// **Description**: Input validation and invariants  
// **Key Concepts**: Guard clauses, safety checks  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RentACar {
    struct Car {
        string name;
        string color;
        uint price;
        bool isRented;
    }

    Car[] private cars;

    event onRent(address _address, Car _car);

    function addACar(string memory _name, string memory _color, uint _price) public {
        require(_price > 0, "Car price must be greater than 0"); // require for input validation
        cars.push(Car(_name, _color, _price, false));
    }

    function showAllCars() public view returns (Car[] memory) {
        return cars;
    }

    function rentACar(uint _id) public {
        require(_id < cars.length, "Invalid car ID"); // require to validate array bounds
        require(cars[_id].isRented == false, "This Car is not Available"); // require for state check

        cars[_id].isRented = true;

        // assert: after setting isRented, we assert that it's indeed true
        assert(cars[_id].isRented == true);

        emit onRent(msg.sender, cars[_id]);
    }
}

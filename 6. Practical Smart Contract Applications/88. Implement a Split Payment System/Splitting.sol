// ### 88. Implement a Split Payment System  
// **Description**: Distribute funds to multiple parties  
// **Key Concepts**: Payment splitting, proportional distribution  

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


    function rentACar(uint _id) public payable {
        require(_id < cars.length, "Invalid car ID"); // require to validate array bounds
        require(cars[_id].isRented == false, "This Car is not Available"); // require for state check
        require(cars[_id].price<= msg.value, "Insufficient funds");

        cars[_id].isRented = true;

        // assert: after setting isRented, we assert that it's indeed true
        assert(cars[_id].isRented == true);

        emit onRent(msg.sender, cars[_id]);


        //spittling payment here.
        address address1=address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        address address2=address(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

        payable(address1).transfer(msg.value/2);
        
        payable(address2).transfer(msg.value/2);

    }
}

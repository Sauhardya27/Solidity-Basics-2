// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; //It tells the compiler to use version 0.8.26 or above of solidity
// pragma solidity >=0.8.26 <0.9.0 // Telling the compiler that any version of solidity gte 0.8.26 and lt 0.9.0 would work;

contract SimpleStorage {
    uint256 public favouriteNumber; //When not initialized, unit type variables are initialized with 0

    //Creating a user-defined datatype named Person
    struct Person{
        uint256 myFavouriteNumber;
        string name;
    }

    Person[] public listOfPeople; //Creating an empty dynamic array

    mapping(string => uint256) public nameToFavouriteNumber; //Creating a map that maps a string to a number

    function store(uint256 _favouriteNumber) public virtual{
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256){ // To retrieve the value of a global variable
        return favouriteNumber;
    }

    function addPeople(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name)); //Adding elements to the array
        nameToFavouriteNumber[_name] = _favouriteNumber; //Creating key, value pair using map
    }
}
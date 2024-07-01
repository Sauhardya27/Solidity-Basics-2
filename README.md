# Solidity Storage Exploration

This project delves into the fundamentals of Solidity by exploring storage concepts: global variables, structures, arrays, and mappings. It demonstrates how to create and deploy smart contracts that store and retrieve data.

## Key Concepts

* **Storage Variables:** `favouriteNumber` in `SimpleStorage` is a global variable used to store a single value.
* **Structures:** `Person` is a user-defined data type that can hold multiple related values (`myFavouriteNumber` and `name`).
* **Arrays:** `listOfPeople` is a dynamic array that can store an indefinite number of `Person` structures.
* **Mappings:** `nameToFavouriteNumber` maps string names to their corresponding favorite numbers.

## Contract Breakdown

### SimpleStorage.sol:

* Defines a global variable `favouriteNumber` to store a single value.
* Provides functions to store and retrieve the value.
* Introduces the `Person` structure and functions to add people to an array (`listOfPeople`) and a mapping (`nameToFavouriteNumber`).

### AddFiveStorage.sol:

* Inherits from `SimpleStorage`.
* Overrides the `store` function to automatically add 5 to the stored value.

### StorageFactory.sol:

* Creates an array of `SimpleStorage` contracts (`listOfSimpleStorage`).
* Offers functions to:
    * Deploy new `SimpleStorage` instances.
    * Store values in a specific `SimpleStorage` contract within the array using its index.
    * Retrieve values from a specific `SimpleStorage` contract within the array using its index.

## Deployment and Usage

1. Install the required Solidity compiler and tools (e.g., using tools like Truffle or Hardhat).
2. Deploy the contracts to a blockchain network (e.g., local development blockchain or testnet).
3. Use the provided functions to interact with the contracts:
    * `SimpleStorage`: Store and retrieve favorite numbers.
    * `AddFiveStorage`: Store values that are automatically incremented by 5.
    * `StorageFactory`: Deploy new `SimpleStorage` instances and interact with them through their indexes.

## Learning Objectives

* Understand basic storage concepts in Solidity.
* Explore user-defined data types (structures).
* Work with dynamic arrays and mappings.
* Practice contract inheritance and function overriding.
* Experience deploying and interacting with smart contracts.
  
## Disclaimer

This project is for educational purposes only. Before using smart contracts in a production environment, thorough testing and security audits are crucial.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorage() public{
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        mySimpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){ 
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}
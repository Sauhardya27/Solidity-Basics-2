// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    function store(uint256 _newNumber) public override {
        favouriteNumber = _newNumber + 5;
    }
}
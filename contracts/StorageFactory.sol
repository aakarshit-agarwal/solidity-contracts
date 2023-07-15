// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageContracts;

    function createSimpleStorageContract() public {
        simpleStorageContracts.push(new SimpleStorage());
    }

    function sfStore(uint256 _index, uint256 _storageNumber) public {
        simpleStorageContracts[_index].store(_storageNumber);
    }

    function sfGet(uint256 _index) public view returns(uint256) {
        return simpleStorageContracts[_index].retrive();
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    Person [] public listOfPeople;

    mapping (string => uint256) nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        myFavoriteNumber = _favouriteNumber;
    }

    function retrive() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _personName, uint256 _favouriteNumber) public {
        listOfPeople.push(Person({name: _personName, favouriteNumber: _favouriteNumber}));
        nameToFavouriteNumber[_personName] = _favouriteNumber;
    }
}

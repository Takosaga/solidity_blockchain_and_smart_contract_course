// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {


    //intialiezed with 0
    uint256 favNumber;

    struct People {
        uint256 favNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameTofavoriteNumber;

    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256) {
        return favNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(People({favNumber: _favNumber, name: _name}));
        nameTofavoriteNumber[_name] = _favNumber;
    }

}
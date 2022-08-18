// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Mapping in solidity
 *
 * Mapping is a reference type as arrays and structs.
 * Mapping allows one to store data in key value pairs
 * for easier retrieval later on the the course of the program
 *
 * In solidity you can't iterate through a map - you need to store
 * the keys in an array and you can't give them sizes
 */

contract LearnMapping {
    // syntax to declare a mapping type
    // address could be of any daatype
    mapping(address => uint256) public myMap;

    // create a specific address
    function setAddress(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }

    // get data stores in a certain key - addr
    function getAddress(address _addr) public view returns (uint256) {
        return myMap[_addr];
    }

    // remove an address
    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}

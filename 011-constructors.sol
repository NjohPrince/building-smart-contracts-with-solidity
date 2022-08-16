// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Constructors in solidity
 *
 * Constructors are special function created using
 * the constructor keyword.
 * It initializes state variables of a contract.
 */

/**
    A constructor has the following key characteristics

    1. A contract can have only one constructor
    2. A constructor code is executed once when a contract
       is created and it is used to initialize the contract
       state.
    3. After a constructor is executed, the final code is 
       deployed to the blockchain.
       This code include the public functions and code 
       reachabke through public functions.
       Constructors code or any internal method used by 
       constructor are not included in final code

       A constructor can either be public or internal.

       An internal constructor marks the contract as abstract.

       In case, no constructor is defined, a default constructor
       is present in the contract.
    */

contract Member {
    string name;
    uint256 age;

    // constructor
    // initialize name and age
    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }
}

// demonstrating inheritance
contract Teacher is Member("Tom", 28) {
    function getName() public view returns (string memory) {
        // returns Tom
        return name;
    }
}

// students
contract Student is Member {
    constructor(string memory name, uint256 age) Member(name, age) {}

    function getName() public view returns (string memory) {
        // return the value stored within the state variable name
        return name;
    }
}

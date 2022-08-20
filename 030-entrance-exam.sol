// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Entrance exam into Advanced Solidity Concepts
 * @author Njoh Noh Prince Junior
 */

// contract C
contract C {
    uint256 private data;
    uint256 public info;

    // constructor --runs only once the contract is deployed
    constructor() {
        info = 10;
    }

    // increment a given number
    function increment(uint256 a) private pure returns (uint256) {
        return a + 1;
    }

    // assign value to data
    function updateData(uint256 a) public {
        data = a;
    }

    // get the value stored in data
    function getData() public view returns (uint256) {
        return data;
    }

    // compute sum between two numbers
    function compute(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }
}

// contract D
contract D {
    // creating an instance of contract C
    C c = new C();

    function readInfo() public view returns (uint256) {
        return c.info();
    }
}

// contract E
// inheriting contract C using the special keyword is
contract E is C {
    
}

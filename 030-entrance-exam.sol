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
    // sets the initial value of info to 10
    constructor() {
        info = 10;
    }

    // increment a given number by 1 and return the result
    function increment(uint256 a) private pure returns (uint256) {
        return a + 1;
    }

    // assign a given value to data
    function updateData(uint256 a) public {
        data = a;
    }

    // get the value stored in data
    function getData() public view returns (uint256) {
        return data;
    }

    // compute the sum between two numbers
    // and it returns the sum of the two numbers
    function compute(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }
}

// contract D
contract D {
    // creating an instance of contract C
    C c = new C();

    // read the data saved in info variable in contract C
    function readInfo() public view returns (uint256) {
        return c.info();
    }
}

// contract E
// inheriting contract C using the special keyword is
contract E is C {
    uint256 private result;
    C private c;

    // instantiate variable c to an instance of contract C
    constructor() {
        c = new C();
    }

    // run the compute function from contract C
    function getComputedResult() public pure {
        compute(23, 5);
    }

    // read he data saved in info variable in contract C
    function readInfo() public view returns (uint256) {
        return info;
    }
}

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
}

// contract D
contract D is C {
    function accessContentFromContractC() public view returns (uint256) {
        // throws an error
        // as variable data is not public

        // return data;

        // this works
        return info;
    }
}

// contract E
contract E {

}

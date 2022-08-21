// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Interfaces
 * @notice Interfaces are similar to abstract contracts
 *         and are created using interface keyword.
 *
 * Interfaces can not have any function with implementation
 * Functions of an interface can be only of type external
 * Interfaces can not have a constructor
 * They can not have a state variable
 * Interface can have enum, structs which can be accessed
 * using the interface name dot notation.
 */

contract Counter {
    uint256 public count;

    function increment() external {
        count += 1;
    }
}

// creating interface
interface ICounter {
    function count() external view returns (uint256);

    function increment() external;
}

// to execute copy the address of the Counter contract
// and feed into the parameters of the functions defined
// at MyContract

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint256) {
        return ICounter(_counter).count();
    }
}

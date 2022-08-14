// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Learn about functions in solidity
 * Manipulating and calling functions to execute
 */

// A function is a group of code that can be called anywhere within your program
// Eliminating the possibility of writing thesame block of code many times

contract learnFunctions {
    // syntax
    // function functionName(parameter list) scope returns(return type) { statements }

    // examples
    function remoteControlOpen(bool closedDoor) public returns (bool) {}

    function addValues() public pure returns (uint256) {
        uint256 a = 2;
        uint256 b = 3;
        uint256 result = a + b;

        return result;
    }
}

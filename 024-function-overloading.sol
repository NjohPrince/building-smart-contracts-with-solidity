// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Function overloading in solidity
 * You can have multiple definitions for the same function name in the same scope
 *
 * The function definition of the function must differ from each other by types and/or
 * the number of arguments in the argument list
 * Also, the type of the arguments can be different.
 *
 * NOTE: You cannot overload function declarations that differ only by return type
 */

contract LearnFunctionOverLoading {
    // calculateSum function with two arguments --calculates the sum of two numbers
    function calculateSum(uint256 numberOne, uint256 numberTwo)
        public
        pure
        returns (uint256)
    {
        return numberOne + numberTwo;
    }

    // calculateSum function with three arguments --calculates the sum of three numbers
    function calculateSum(
        uint256 numberOne,
        uint256 numberTwo,
        uint256 numberThree
    ) public pure returns (uint256) {
        return numberOne + numberTwo + numberThree;
    }

    // 😅 Sum two strings --concatenation of two strings
    function calculateSum(string memory first, string memory second)
        public
        pure
        returns (string memory)
    {
        // return the concatenation of both strings
        return string.concat(first, second);
    }

    // concatenate two names
    function concatenateTwoString() public pure returns (string memory) {
        string memory fullName = calculateSum("Njoh Noh", "Prince Junior");
        return fullName;
    }

    // call the function to add two numbers and return the result
    // of the computation.
    function calculateSumTwoArgs() public pure returns (uint256) {
        // assign the result of the computation to a variable
        uint256 result = calculateSum(3, 4);
        return result;
    }

    // call the function to add three numbers and return the result
    // of the computation.
    function calculateSumThreeArgs() public pure returns (uint256) {
        // assign the result of the computation to a variable
        uint256 result = calculateSum(3, 4, 1);
        return result;
    }
}

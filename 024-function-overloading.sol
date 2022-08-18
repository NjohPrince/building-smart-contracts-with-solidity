// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Function overloading in solidity
 * You can have multiple definitions for the same function name in the same scope
 *
 * The function definition of the function must differ from each other by types and/or
 * the number of arguments in the argument list
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

    // function to test/call the functions above
    function calculateSums() public pure {
        calculateSum(3, 4);
        calculateSum(3, 4, 1);
    }
}

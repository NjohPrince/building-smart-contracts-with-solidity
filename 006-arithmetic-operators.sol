// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Learn about arithmetic operators in solidity
 * operators tell the compiler to perform specific
 * mathematical operation, logical or relational
 * operation and produce a suitable response
 */

contract learnArithmeticOperators {
    uint256 public a = 5;
    uint256 public b = 10;

    function calculatorAdd() public view returns (uint256) {
        uint256 result;
        result = a + b;
        return result;
    }

    function calculatorMultiply() public view returns (uint256) {
        uint256 result;
        result = a * b;
        return result;
    }

    function calculatorSubtract() public view returns (uint256) {
        uint256 result;
        result = a - b;
        return result;
    }

    function calculatorDivide() public view returns (uint256) {
        uint256 result;

        // division by ZERO
        if (b != 0) {
            result = a / b;
        } else {
            result = 0;
        }
        return result;
    }

    function calculatorGetRemainder() public view returns (uint256) {
        uint256 result;
        result = a % b;
        return result;
    }
}

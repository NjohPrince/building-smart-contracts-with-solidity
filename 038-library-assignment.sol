// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Library Assignment
 */

library Calculator {
    
    function performArithmeticOperation(
        uint256 value1,
        uint256 value2,
        string memory operator
    ) public pure returns (uint256) {
        // incase of subtraction
        if (
            keccak256(abi.encodePacked(operator)) ==
            keccak256(abi.encodePacked("-"))
        ) {
            return value1 - value2;
        }

        // incase of multiplication
        if (
            keccak256(abi.encodePacked(operator)) ==
            keccak256(abi.encodePacked("*"))
        ) {
            return value1 * value2;
        }

        // incase of division
        if (
            (keccak256(abi.encodePacked(operator)) ==
                keccak256(abi.encodePacked("/")))
        ) {
            if (value2 == 0) return 0;
            return value1 / value2;
        }

        // default case: incase if addition
        return value1 + value2;
    }
}

contract CalculatorTest {
    // manipulate these values to affect the result
    uint256 value1 = 3;
    uint256 value2 = 4;

    // set an operator --available options (+, -, *, /)
    string operator = "*";

    // contract owner
    address owner;

    // set the value of owner to the owner of the contract
    constructor() {
        owner = msg.sender;
    }

    // test execution of our calculator
    function CalculateResultOfExpression()
        public
        view
        returns (uint256, address)
    {
        uint256 result = Calculator.performArithmeticOperation(
            value1,
            value2,
            operator
        );
        return (result, owner);
    }
}

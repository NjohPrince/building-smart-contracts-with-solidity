// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Comparison operators
 */

contract ComparisonOperators {
    uint256 public a = 5;
    uint256 public b = 10;

    function compareEquality() public view returns (bool) {
        return a == b; // evaluates to a boolean: true or false
        // return a != b; // not equal to
    }

    function compareValues() public view returns (bool) {
        if (a > b) {
            return true;
        }
        return false;
    }

    // require function
    function compareValuesUsingRequire() public view {
        require(a > b, "This is false.");
    }

    function compareGreaterOrEqual() public view {
        require(a >= b, "This is false.");
    }
}

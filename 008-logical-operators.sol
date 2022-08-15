// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Logical operators
 */

contract LogicalOperators {
    uint256 public a = 5;
    uint256 public b = 10;

    // logical not
    function logicalNot() public view returns (bool) {
        if (!(a > b)) {
            return true;
        }
        return false;
    }

    // AND: &&
    function logicAND() public view returns (bool) {
        // both conditions must be fulfilled
        if ((a > b) && (a == b)) {
            return true;
        }
        return false;
    }

    // OR: &&
    function logicOR() public view returns (bool) {
        // atleast one condition should be fulfilled
        if ((a > b) || (a == b)) {
            return true;
        }
        return false;
    }
}

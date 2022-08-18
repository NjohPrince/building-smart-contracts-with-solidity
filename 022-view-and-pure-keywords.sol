// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * View Keyword in solidity
 * view functions ensure that they will not modify the state (return values)
 * while pure functions ensure that they not read or modify the state (returns calculations)
 */

contract ViewAndPureKeyword {
    uint256 value;

    // this function modifies the state
    function setValue(uint256 _value) external {
        // here we are using an eth send transaction
        value = _value;
    }

    // does not modifies the state --read-only function
    // that returns a value
    function getValue() external view returns (uint256) {
        // this is an eth call
        return value;
    }

    // does not reads or modify the state
    function aPureFunc() public pure returns (uint256) {
        return 4 + 5;
    }
}

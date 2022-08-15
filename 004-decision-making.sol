// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Learn about decision making in solidity
 * conditional statements, switching execution paths
 * based on certain conditions or decision made
 */

contract LearnDecisionMaking {
    // orange variable
    uint256 oranges = 5;

    // validate oranges function
    function validateOranges() public view returns (bool) {
        // if...else condition
        if (oranges == 5) // evaluates trueness of the expression in parenthesis
        {
            // then
            return true;
        } else {
            return true;
        }
    }

    // exercise
    uint256 stakingWallet = 10;

    // stake more and ge more, stake less you get less
    function airDrop() public view returns (uint256) {
        if (stakingWallet == 10) {
            return stakingWallet + 10;
        } else {
            return stakingWallet + 1;
        }
    }
}

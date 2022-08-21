// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title More on Events in Solidity
 * @notice Events have lower gas cost that storage
 */

contract LearnMoreOnEvents {
    // To create an event we consider two things
    // 1. Declare th event and
    // 2. emit that event

    // example event declaration to funds transfer
    // use the CamelCase convention for naming your events
    event NewTrade(uint256 data, address from, address to, uint256 amount);

    // function to perform a trade
    function trade(address to, uint256 amount) external {
        // an outside consumer can see the event throught web3js
        // block.timestamp is a global varianle that gives us the current timestamp
        // emitting the event
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}

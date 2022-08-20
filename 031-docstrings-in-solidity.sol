// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Docstrings
 *
 * @title Docstrings => a title that describes the contract
 * context of use: contracts and interfaces
 *
 * @notice => explanation of some functionality
 * context of use: contracts, interfaces and functions
 *
 * @author Njoh Noh Prince Junior => author's name
 * context of use: contracts, interfaces and functions
 *
 * @dev => exra details
 * context of use: contracts, interfaces and functions
 */

// contract C
contract DocStrings {
    /**
     * @param _addr: address  => parameter of the function
     * context of use: functions
     *
     * @return address => return value of the function
     * context of use: functions
     */
    function someRandomFunction(address _addr) public pure returns (address) {
        return _addr;
    }
}

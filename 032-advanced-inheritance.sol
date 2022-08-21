// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Advanced Inheritance
 *
 * @title Advances Inheritance
 * @notice Inheritance is a way to extend functionality of a contract
 * Solidity supports single as well as multiple inheritance
 *
 * @dev A contract in solidity is similar to a class in C++ --which ia a blueprint for an object
 * Classes can inherit other classes, so can contracts inherit other contracts!
 *
 * REMINDER: A constructor is a special function declared with the constructor keyword which will be
 * executed once per contract and is invoked when a contract is created.
 */

// contract C
contract AdvancedInheritance {}

contract FirstContract {}

// second contract inheriting the first contract
contract secondContract is FirstContract {}


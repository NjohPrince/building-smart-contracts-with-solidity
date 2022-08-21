// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Libraries In Solidity
 * @notice Libraries are similar to Contracts but are mainly intended for reuse.
 * A Library contains functions which other contracts can call.
 * Solidity have certain restrictions on use of a Library.
 *
 * Following are the key characteristics of a Solidity Library.
 *
 * 1. Library functions can be called directly if they do not modify the state.
 * That means pure or view functions only can be called from outside the library.
 *
 * 2. Library can not be destroyed as it is assumed to be stateless.
 *
 * 3. A Library cannot have state variables.
 *
 * 4. A Library cannot inherit any element.
 *
 * 5. A Library cannot be inherited.
 */

contract Library {

}

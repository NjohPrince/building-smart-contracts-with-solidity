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

library SearchLibrary {
    function indexOf(uint256[] storage self, uint256 value)
        public
        view
        returns (uint256)
    {
        for (uint256 i = 0; i < self.length; i++) {
            if (self[i] == value) return i;
        }

        // not practical
        // this is just so we do not get a warning first
        return 0;
    }
}

contract LibraryTest {
    uint256[] data;

    // instantiating our state
    constructor() {
        data.push(0);
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    // check if given value is present within the array
    function isValuePresent(uint256 val) external view returns (uint256) {
        uint256 value = val;
        uint256 index = SearchLibrary.indexOf(data, value);

        return index;
    }
}

// Exercise
library SearchLibrary2 {
    function indexOf(uint256[] storage self, uint256 value)
        public
        view
        returns (uint256)
    {
        for (uint256 i = 0; i < self.length; i++) {
            if (self[i] == value) return i;
        }

        // not practical
        // this is just so we do not get a warning first
        return 0;
    }
}

contract LibraryTest2 {
    using SearchLibrary2 for uint256[];
    uint256[] data;

    // instantiating our state
    constructor() {
        data.push(0);
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    // check if given value is present within the array
    function isValuePresent() external view returns (uint256) {
        uint256 index = data.indexOf(4);
        return index;
    }
}

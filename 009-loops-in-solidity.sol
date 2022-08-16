// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Working with loops
 */

contract LoopsInSolidity {
    // a list of numbers ranging from 1 to 10
    uint256[] public numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function countMultiples(uint256 _number) public view returns (uint256) {
        // three part statement for a for loop
        // 1. Initialize start of loop
        // 2. Determine the length of the run time
        // 3. iterate or update the index after each turn
        // depending on the case - in our case we want to
        // increment the index after each run.

        uint256 count = 0;
        for (uint256 index = 0; index < numbersList.length; index++) {
            // logic for the loop
            if (checkIfMultiple(numbersList[index], _number)) {
                count++;
            } else {
                continue;
            }
        }

        return count;
    }

    function checkIfMultiple(uint256 _num, uint256 _num2)
        public
        pure
        returns (bool)
    {
        // we will make use of modulo operator
        if (_num % _num2 == 0) {
            return true;
        } else {
            return false;
        }
    }
}

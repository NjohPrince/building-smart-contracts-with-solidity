// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Ether units
 */

contract LearnEtherUnits {
    function testEtherUnits() public pure {
        // wei is the smallest domination of ether
        assert(1000000000000000000 == 1 ether);
        assert(1 wei == 1);

        assert(1 ether == 1e18);
    }
}

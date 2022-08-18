// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Ether units
 * Etherium is the blockchain and Ether is the
 * currency for the Etherium blockchain.
 */

contract LearnEtherUnits {
    // assert is a special function that test for the trueness of expressions
    // it breaks the code of function when the expression evaluates to false
    function testEtherUnits() public pure {
        // wei is the smallest domination of ether
        assert(1000000000000000000 wei == 1 ether); // 10^18 = 1 ether
        assert(1 wei == 1); // 1 wei = 1

        assert(1 ether == 1e18);

        // assertion for the equivalent of 2 ethers in weis
        assert(2 ether == 2000000000000000000 wei);
    }
}

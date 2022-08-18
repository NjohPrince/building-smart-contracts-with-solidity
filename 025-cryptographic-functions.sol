// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Cryptographic Functions
 * A cryptographic has function(CHF) is a mathematical algorithm that maps data of arbitrary size
 * (often called the "message") to a bit array of a fixed size (called the "hash" or "hash value" or "message digest")
 * It is a one way function, that is, a function which is practically infeasible to invert or reverse the computation.
 *
 * Solidity provides inbuilt cryptographic functions as well. Below are some of the important methods it provides:
 *
 * keccak256(bytes memory) returns (byte32)
 * sha256(bytes memory) returns (bytes 32)
 * ripemd160(bytes memory) returns (bytes 20)
 */

// Keccak is a leading hashing function, designed by non-NSA designers. Keccak won NIST competition to become the official SHA3
// Keccak is a family of cryptographic sponge functions and is designed as an alternative to SHA-256

contract LearnCryptoGraphicFunctions {
    // we will leaverage this module on two things
    // 1. Modulo operator
    // 2. Cryptographic hashing

    function randMod(uint256 range) external view returns (uint256) {
        // grab information from the blockchain to randomly generate numbers
        // abi.encodePacked concatenates arguments nicely
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.timestamp,
                        block.difficulty,
                        msg.sender
                    )
                )
            ) % range;
    }
}

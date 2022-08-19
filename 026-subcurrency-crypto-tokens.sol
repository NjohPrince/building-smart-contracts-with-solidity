// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Crypto Tokens
 *
 * The contract allows only its creator to create new coins(different issuance schemes are possible)
 *
 * Anyone can send coins to each other without the need for regictering
 * with username and password, all you need is an Etherium keypair
 */

contract CryptoTokensAndMinting {
    // REMINDER: The keyword public is used in
    // making the variables accessible from other contracts

    address public minter;
    mapping(address => uint256) public balances;

    // create a constructor
    // REMINDER: The constructor only runs when we deploy the contract
    constructor() {
        minter = msg.sender;
    }
}

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

    // our clients can react to specific
    // contract changes you declare

    // Event is an inheritable member of a contract. An event is emmited
    // it stores the arguments passed in the transaction logs.

    // These logs are stored on the blockchain and are accessible using the
    // address of the contract untill the contract is present on the blockchain.
    event Sent(address from, address to, uint256 amount);

    // create a constructor
    // REMINDER: The constructor only runs when we deploy the contract
    constructor() {
        minter = msg.sender;
    }

    // want to make new coins and send to an address
    // only the owner can do this
    function mint(address receiver, uint256 amount) public {
        // make sure its the minter
        require(msg.sender == minter);

        // add amount to the receiver's previous balance
        balances[receiver] += amount;
    }

    // error function to handle error in transactions
    error insufficientBalance(uint256 requested, uint256 available);

    // send any amount of coins to an existing address
    function send(address receiver, uint256 amount) public {
        // require the senders balance to be greater that or equal to the amount to be sent
        if (balances[msg.sender] < amount) {
            // revert keyword will cancel the transaction
            revert insufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
        }

        // the sender has a reduction in amount of coins in possession
        // while the receiver has an increase in amount of coins in posesssion
        balances[msg.sender] -= amount;
        balances[receiver] += amount;

        // emit the event with the required details
        emit Sent(msg.sender, receiver, amount);
    }
}

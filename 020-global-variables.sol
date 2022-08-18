// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Global variables(special variables) in solidity
 * These are variables that provide information about the blockchain
 *
 * As examples we have:
 * msg.sender - sender of the message (current call),
 * msg.value (uint) - number of wei sent with the message,
 * block.timestamp - current block timestamp as seconds since unix epoch,
 * block.number - current block number
 */

// helpful link to learn more about global variables and a lot of examples,
// their uses and warnings.
// https://docs.soliditylang.org/en/v0.8.15/units-and-global-variables.html

contract LedgerBalance {
    mapping(address => uint256) balance;

    // update the balance of the current sender, initiator of the transaction
    function updateBalance(uint256 newBalance) public {
        balance[msg.sender] = newBalance;
    }
}

// update the balance from another contract
contract Updated {
    function updateBalance() public {
        // creating an instance of the LedgerBalance contract
        LedgerBalance ledgerBalance = new LedgerBalance();

        // updating the balance
        ledgerBalance.updateBalance(40);
    }
}

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Handling threats
 * Cyber Security in Solidity - against bad actors, accidential occurences
 *
 * Withdrawal patterns ensures that direct transfer call is bot made which
 * poses a security threat
 *
 * Transfers are atomic(meaning all or nothing)
 */

contract SecurityInSolidity {
    uint256 contributedAmount = 100;
    address payable[20] public funders;
    mapping(address => uint256) public balances;

    // specific addresses
    address payable tatiana;
    address payable john;

    // modifier
    modifier onlyOwner() {
        require(true);
        _;
    }

    // from the previous module --instead of using the transfer method
    // which reverts the code; we can use the send method which returns
    // a boolean
    function sendRefund() public payable onlyOwner returns (bool success) {
        // though not he best but considerately solves a problem
        if (!tatiana.send(contributedAmount)) {
            // do something
        } else {
            // we might also wanna do something at this point
        }

        return true;
    }

    // a more better way of tackling this problem is to let the investor
    // withdraw their funds themselves.
    // A global method which comes on handy here is the: msg.sender

    // function to claim refunds
    function claimRefund() public payable {
        require(balances[msg.sender] > 0);

        // we make the address payable before initiating the send transaction
        address payable convertedPayableAddress = payable(msg.sender);
        convertedPayableAddress.transfer(balances[msg.sender]);
    }
}

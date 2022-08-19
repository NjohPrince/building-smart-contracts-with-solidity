// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Cyber Security in Solidity - against bad actors, accidential occurences
 *
 * Withdrawal patterns ensures that direct transfer call is bot made which
 * poses a security threat
 *
 * Transfers are atomic(meaning all or nothing)
 */

contract SecurityInSolidity {
    // some constant variables for testing
    // and getting rid of warnings or errors.
    uint256 contributedAmount = 100;
    address payable[20] public funders;

    // specific addresses
    address payable tatiana;
    address payable john;

    // modifier
    modifier onlyOwner() {
        require(true);
        _;
    }

    // function to return funds
    function returnFunds() public payable onlyOwner returns (bool success) {
        for (uint256 i = 0; i < funders.length; i++) {
            funders[i].transfer(contributedAmount);
        }
        return true;
    }

    // From the above function:
    // 1. What if the owner chickens out and does not return the funds
    // 2. The loop is unbound considering that the total funders is unknown
    // it could run out of gas before allocaing all the funds, what an attacker could
    // just do is to make a small bunch of contributions .0000284289

    // function transfer funds between two addresses
    function returnFundsTwoAddresses()
        public
        payable
        onlyOwner
        returns (bool success)
    {
        tatiana.transfer(contributedAmount);
        john.transfer(contributedAmount);

        return true;
    }

    // What could go wrong in this case?
    // 1. What if tatiana rejects the transfer
    // - The function is going to break or fail and john is not going to get paid

    // Thinking that all contracts and accounts would want to receive or accept
    // funds automatically is intuitive at first; but it is infact very naive and dangerous
    // to build your code like this.

    // If it is in their interest to reject the funds they will

}

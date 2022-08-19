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
    function returnFunds() public onlyOwner returns (bool success) {
        for (uint256 i = 0; i < funders.length; i++) {
            funders[i].transfer(contributedAmount);
        }
        return true;
    }

    // function transfer funds between two addresses
    function returnFundsTwoAddresses() public onlyOwner returns (bool success) {
        tatiana.transfer(contributedAmount);
        john.transfer(contributedAmount);

        return true;
    }
}

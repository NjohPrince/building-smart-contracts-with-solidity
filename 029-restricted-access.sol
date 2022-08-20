// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Restricted Access
 * By Default a contract is made readonly unless it is made public
 * We can restrict who can modify a contract's state or call a
 * function using modifiers.
 */

contract RestrictedAccess {
    address public owner = msg.sender;
    uint256 public creationTime = block.timestamp;

    modifier onlyBy(address _account) {
        // check if the current sender is the owner
        // require(msg.sender == owner);
        require(msg.sender == _account, "Access Restricted to Owners Only!");
        _;
    }

    modifier onlyAfter(uint256 _time) {
        require(block.timestamp >= _time, "Function called to early!");
        _;
    }

    // function that changes the owner address
    // restrict this access only to the owner of the contract
    function changeOwnerAddress(address newAddres) public onlyBy(owner) {
        owner = newAddres;
    }

    // function to disown the current owner
    // only run the contract after three weeks of creation
    function disownOwner()
        public
        onlyBy(owner)
        onlyAfter(creationTime + 3 weeks)
    {
        delete owner;
    }
}

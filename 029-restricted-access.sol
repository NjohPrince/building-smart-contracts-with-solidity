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

    modifier onlyByOwner(address _account) {
        // check if the current sender is the owner
        // require(msg.sender == owner);
        require(msg.sender == _account, "Access Restricted to Owners Only!");
        _;
    }

    // function that changes the owner address
    // restrict this access only to the owner of the contract
    function changeOwnerAddress(address newAddres) public onlyByOwner(owner) {
        owner = newAddres;
    }

    // funcion to disown the current owner
    function disownOwner() public {
        delete owner;
    }
}

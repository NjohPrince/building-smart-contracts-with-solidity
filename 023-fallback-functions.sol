// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Fallback functions
 *
 * Define a fallback function:
 * 1. Cannot have a name
 * 2. Does not take any inputs
 * 3. Does not return any outputs
 * 4. Must be declared as external
 */

// USAGE - Why Use It
/**
 * When you call a function that does not exists
 * when transfering ethers; send and transfer receives 2300 gas
 * bu call method receives more(all of the gas).
 */

contract FallBack {
    event Log(uint256 gas);

    fallback() external payable {
        // not recommended to write to much code - because the function will fail

        // invoke the send or transfer method: we get 2300 gas which is enough to emit a log
        // invoke the call method: we get all the gas

        // special solidity function gasleft returns how many gas is left
        emit Log(gasleft());
    }

    function getBalance() public view returns (uint256) {
        // return the stored balance of the contract
        return address(this).balance;
    }
}

// new contract will send ether to the FallBack contract
contract SendToFallBack {
    function transferToFallBack(address payable _to) public payable {
        // send ether with transfer method
        // automatically transfer will transfer 2300 gas amount

        _to.transfer(msg.value);
    }

    function callFallBack(address payable _to) public payable {
        // send ether with call
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send!");
    }
}

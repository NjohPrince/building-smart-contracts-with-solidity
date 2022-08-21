// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Assembly in Solidity
 */

contract LearnAssembly {
    function addToEVM() external {
        uint256 x;
        uint256 y;

        assembly {
            let z := add(x, y)

            // load the data for a specific slot
            let a := mload(0x40)

            // store something temporarily unto memory
            mstore(a, 4)

            // persistence storage
            sstore(a, 100)
        }
    }

    function addToEVM2() public view returns (bool success) {}
}

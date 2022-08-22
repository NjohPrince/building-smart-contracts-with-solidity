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

    function addToEVM2() public view returns (bool success) {
        uint256 size;
        address addr;

        // checks whether an address contains any bytes of code or not
        assembly {
            size := extcodesize(addr)
        }

        if (size > 0) return true;
        return false;
    }

    // exercise
    function addToEVM3() external pure {
        bytes memory data = new bytes(10);

        // we can not convert this into a fixed size
        // this conversion will throw an error or will fail
        // bytes32 dataB32 = bytes32(data);

        bytes32 byteB32;

        assembly {
            byteB32 := mload(add(data, 32))
        }

        // but if we care only about the first 32 bytes we can use assembly!
    }
}

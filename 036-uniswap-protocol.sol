// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Uniswap Protocol
 * @notice The Uniswap protocol is a peer-to-peer1 system designed for exchanging
 * cryptocurrencies (ERC-20 Tokens) on the Ethereum blockchain.
 *
 * Read more about it here: https://docs.uniswap.org/protocol/introduction
 */

// https://uniswap.org/docs/v2/smart-contracts/factory/
// https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2Factory.solimplementation
// UniswapV2Factory is deployed at 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f on the Ethereum mainnet, and the Ropsten, Rinkeby, Görli, and Kovan testnets

interface UniswapV2Factory {
    // get the pair of tokens --tokenA and tokenB
    function getPair(address tokenA, address tokenB)
        external
        view
        returns (address pair);
}

interface UniswapV2Pair {
    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        );
}

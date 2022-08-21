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

// NOTE: Please do not deploy these contracts unless you knwo what you are doing
// You will pay gas fees which youy might not want to

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

contract MyContract {
    address private factoryAddress = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;

    // below are some etherium tokens running on the mainnet

    // gotten from ethercan.io --Dai Stablecoin's contract address
    address private dai = 0x6B175474E89094C44Da98b954EedeAC495271d0F;

    // etherscan --Wrapped Ether's contract address
    address private weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    function getReservedTokens() external view returns (uint256, uint256) {
        address pair = UniswapV2Factory(factoryAddress).getPair(dai, weth);

        // getting the reserves
        (uint256 reserve0, uint256 reserve1, ) = UniswapV2Pair(pair)
            .getReserves();
        return (reserve0, reserve1);
    }
}

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Learn about variables and scope
 */

contract learnVariableAndScope {
    // state variable
    uint256 public data = 10;

    // private variable - can't be accessed out of the contract
    uint256 private dataTwo = 50;

    // inernal variable - can be accessed within this contract and
    // contracts that inherit this contract
    // private with a lesser restriction power
    uint256 internal dataThree = 50;

    // do not do this for variables; as this removes or contradicts
    // the purpose of having a state variable
    // uint256 external dataFour = 50;

    function x() public returns (uint256) {
        // modifying the state variable
        data = 25;
        return data;
    }

    function y() public view returns (uint256) {
        // returns 10 if function x is not ran
        // but returns 25 after function x runs
        return data;
    }

    // private function, cannot be accessed out of the contract
    function z() private returns (uint256) {
        data = 35;
        return data;
    }

    // this function can only be called out of the contract
    // will produce a compilation error when called
    // function b() external returns (uint256) {
    //     data = 45;
    //     return data;
    // }

    function m() public returns (uint256) {
        // calls function z to execution
        return z();

        // test execution for funcion b
        // return b();
    }
}

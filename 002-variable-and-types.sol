// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// variables are used to store information to be referenced
// or manipulated by our program

// Mostly used and three main variable types:

// Boolean - keyword: bool - Example values: true, false
// Integer - keyword: uint - Example values: signed and unsigned integers with varying sizes
// String - keyword: string - Example values: data values that are made up of a sequence of characters

// isAdmin = boolean - checks if a user is an admin
// walletAmount = integer, total amount in users wallet
// errorMessage = a string containing a description of what went wrong

contract learnVariables {
    // our solidity code

    // declaring an integer variable
    uint256 chocolateBar = 100;

    // string variables
    string storeOwner = "Prince Junior";
    string errorMessage = "Not an Admin";

    // boolean variable
    bool isAdmin = true;

    // exercise
    uint256 wallet = 300;
    bool spent = false;
    string notififySpend = "You spent an amount of money";
}

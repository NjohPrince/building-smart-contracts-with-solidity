// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Working with strings
 */

contract LearnStrings {
    // string literals
    string greetings = "Hello World!";
    string firstName = "Njoh Noh";
    string lastName = "Prince Junior";

    // To create functions to work with our strings,
    // we need to specify where the string will be stored
    // memory is a temporal storage location in solidity
    // while storage holds the data between function calls

    /**
        A solidity contract can use any amount of memory during execution,
        but once the execution stops, the memory is wiped off completely
        for the next execution.
     */

    // function to get the first name
    function getFirstName() public view returns (string memory) {
        return firstName;
    }

    // function to get the last name
    function getLastName() public view returns (string memory) {
        return firstName;
    }

    // function to say hello
    function sayHello() public view returns (string memory) {
        return greetings;
    }

    // function to change greeting
    function changeGreeting(string memory _change) public {
        greetings = _change;
    }

    // strings in solidity are computationally expensive
    // getting the length or manipulating strings is a bit
    // different from other programming languages.

    // as a result we convert our strings to bytes
    function getCharFromGreeting() public view returns (bytes1) {
        bytes memory greetingsInBytes = bytes(greetings);
        return greetingsInBytes[0];
    }

    function getLengthGreeting() public view returns (uint256) {
        bytes memory greetingsInBytes = bytes(greetings);
        return greetingsInBytes.length;
    }

    // using special characters in strings
    // can be created or escaped using '\'
    // example: 'Hello, you\'re smart'

    // another possible way
    string text = "You're very smart!";
}

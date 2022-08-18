// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Working with enums in solidity
 *
 * Enums restrict a variable to have only a few
 * predefined values. Tha values enumeraed in the
 * list are called enums.
 *
 * With the use of enums it is possible to reduce
 * he number of bugs in your code.
 */

contract LearnEnums {
    // create an enum list of french fries sizes
    enum frenchFriesSize {
        LARGE,
        MEDIUM,
        SMALL
    }

    // create a variable choice with datatype frenchFriesSize
    // frenchFriesSizes now acts as a datatype for creating new
    // variables
    frenchFriesSize choice;

    // setting a default choice
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;

    // switch choice to small
    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    }

    // switch choice to large
    function setLarge() public {
        choice = frenchFriesSize.LARGE;
    }

    // funcion to get the choice
    function getChoice() public view returns (frenchFriesSize) {
        return choice;
    }

    // funcion to get the choice
    function getDefaultChoice() public pure returns (uint256) {
        return uint256(defaultChoice);
    }
}

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Working with nested maps in solidity
 */

contract LearnNestedMapping {
    // movie map
    mapping(uint256 => Movie) movie;

    // creating a nested map
    mapping(address => mapping(uint256 => Movie)) public myMovie;

    // movie structure
    struct Movie {
        string title;
        string director;
    }

    // create and add a movie to the map
    function addMovie(
        uint256 movieID,
        string memory title,
        string memory director
    ) public {
        movie[movieID] = Movie(title, director);
    }

    // adding a movie to the nested map
    function addMyMovie(
        uint256 movieID,
        string memory title,
        string memory director
    ) public {
        // NOTE: msg.sender is a global variable, which is accessible
        // throughout solidity which captures the address that is calling
        // the contract.

        // store this movie unto a particular address
        myMovie[msg.sender][movieID] = Movie(title, director);
    }

    // get a particular movie from the map
    function getMovieFromMap(uint256 movieID)
        public
        view
        returns (Movie memory)
    {
        return movie[movieID];
    }
}

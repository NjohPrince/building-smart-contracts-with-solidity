// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Working with Maps and Structs
 */

contract LearnMappingAndStruct {
    // movie map
    mapping(uint256 => Movie) movie;

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
}

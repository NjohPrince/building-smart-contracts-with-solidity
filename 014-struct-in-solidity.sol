// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Working with structs in solidity
 *
 * Structs are types that are used to represent a record.
 * Supposed you want to keep track of movies in a library
 * You might want to keep track of the following
 * properties about each movie:
 *
 * title, director, movieID
 */

contract LearnStructs {
    // Defining a movie structure
    struct Movie {
        string title;
        string director;
        uint256 movieID;
    }

    // we can create many variables of type Movie
    Movie movie;
    Movie horrorMovies;
    Movie scienceFictionMovies;
    Movie commedyMovies;

    // set a movie
    function setMoview() public {
        movie = Movie("The Contrast Pair", "TheUnicornDev", 1);
    }

    // get the movie
    function getMovieID() public view returns (uint256) {
        return movie.movieID;
    }
}

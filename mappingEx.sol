pragma solidity >= 0.6.0 < 0.9.0;

contract Mapping {
    struct Movie {
        string title;
        string name;
    }
    mapping(uint => Movie) movie;
    mapping(address => mapping(uint => Movie)) public myMovie;
    
    function addMovie(uint _movieId, string memory _title, string memory _name) public {
        movie[_movieId] = Movie( _title, _name);
    }
    function addMyMovie(uint _movieId, string memory _title, string memory _name) public {
        myMovie[msg.sender][_movieId] = Movie( _title, _name);
    }
    function getMovie(uint _movieId) public view returns (string memory) {
        return movie[_movieId].title;
    }
    function getMyMovie(uint _movieId) public view returns (string memory) {
        return myMovie[msg.sender][_movieId].title;
    }
}
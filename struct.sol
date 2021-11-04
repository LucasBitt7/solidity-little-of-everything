pragma solidity >= 0.6.0 < 0.9.0;

contract Struct {
    struct Movie {
        string name;
        string director;
        uint id;
    }
    Movie movie;
    Movie comedy;
    
    function setMovie(string memory _name, string memory _director, uint _id) public {
        movie = Movie(_name, _director, _id);
    }
    function getMovieId() public view returns (uint) {
        return movie.id;
    }
}
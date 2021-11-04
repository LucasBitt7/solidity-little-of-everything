pragma solidity >= 0.6.0  < 0.9.0;

contract validadeBol {
    
    uint balls = 232;
    
    function checkVariable() public view returns (bool) {
    require (balls == 2); 
        return true;
    }
}
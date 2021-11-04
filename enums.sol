pragma solidity >= 0.6.0 < 0.9.0;

contract Enums {
    enum shirtColor {RED, WHITE, GREEN}
    shirtColor constant defaultChoice = shirtColor.GREEN;
    shirtColor choice;
    
    function setWhite() public {
        choice = shirtColor.WHITE;
    }
    function getChoice() public view returns(shirtColor) {
        return choice;
    }
    function getDefaultChoice() public view returns(shirtColor) {
        return defaultChoice;
    }
}
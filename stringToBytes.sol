pragma solidity >= 0.6.0 < 0.9.0;

contract loopExercise {
    string public favoriteColor = "blue";
    
   function viewFavoriteColor() public view returns (string memory) {
       return favoriteColor;
   } 
   
   function setFavoriteColor(string memory _newColor) public {
       favoriteColor = _newColor;
   } 
   
   function getLenght() public view returns(uint) {
       bytes memory stringToBytes = bytes(favoriteColor);
       return stringToBytes.length;
   }
}
    
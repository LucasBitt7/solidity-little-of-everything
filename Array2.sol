pragma solidity >= 0.6.0 < 0.9.0;

contract base {
    // constructor(uint i) public {
    //     delete myArray[i];
    // }
    uint[] public changeArray;
    
    function removeElement(uint i) public {
        changeArray[i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }
    function add() public {
        for (uint i; i < 4; i++) {
           changeArray.push(i+1) ;
        }
    }
    function getLength() public view returns (uint) {
        return changeArray.length;
    }
}
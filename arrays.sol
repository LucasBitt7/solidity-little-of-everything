pragma solidity >= 0.6.0 < 0.9.0;

contract base {
    uint[] public myArray;
    
    function push(uint number) public {
        myArray.push(number);
    }
    function pop() public {
        myArray.pop(number);
    }
    function getLength() public view returns (uint) {
        myArray.length;
    }
    function remove(uint i) public {
        delete myArray[i];
    }    
}
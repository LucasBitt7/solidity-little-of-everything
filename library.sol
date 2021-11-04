pragma solidity >= 0.6.0 < 0.9.0;

library Search {
    function indexOf(uint[] storage self, uint data) public view returns(uint) {
        for(uint i = 0; i < self.length; i++) if(self[i] == data) return i;}}

contract SearchItem {
    using Search for uint[];
    uint [] public array;
    constructor() {
        for(uint i = 0; i < 5; i++){
            array.push(i++);
        }
    }
    
    function SearchVal(uint val) external view returns(uint) 
    {
        uint value = val;
        uint index = array.indexOf(value);
        return index;
    }
}
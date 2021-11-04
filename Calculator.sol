pragma solidity >= 0.7.0 < 0.9.0;

contract Var {
    uint a;
    uint b;
    constructor() public{}
    
    function getAB(uint _a, uint _b) external {
        a = _a;
        b= _b;
    }

    function getSoma() public view returns(uint) {
    uint result = a + b;
    return result;
    }
    function getMenos() public view returns(uint) {
    uint result = a -b;
    return result;
    }   
    function getMultiply() public view returns(uint) {
    uint result = a * b;
    return result;
    }
    function getDivision() public view returns(uint) {
    uint result = a / b;
    return result;
    }
    function get() public view returns(uint) {
        uint resultSupreme = getDivision() + 2;
        return resultSupreme;
    }
}
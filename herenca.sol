pragma solidity >= 0.6.0 < 0.9.0;

contract B{

uint public innerVall = 100;

function addInnerTen(uint val) public pure returns(uint) {
    return val += 10;
}
}
contract A is B{
  function addOuterInnerTen(uint val) public pure returns(uint) {
    return  addInnerTen(val);
}  
function getVar() public view returns(uint) {
    return innerVall;
}
}
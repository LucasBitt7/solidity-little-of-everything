pragma solidity >= 0.6.0 < 0.9.0;

abstract contract Calculator{


function calculate(uint a, uint b) public virtual pure returns(uint);
    

}
contract A is Calculator{
function calculate(uint a, uint b) public override pure returns(uint) {
    return a+b;
}
}
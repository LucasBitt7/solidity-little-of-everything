pragma solidity >= 0.6.0 < 0.9.0;

contract Mapping {


    mapping(address => uint) public myMap;
    
    function getAddress(address _adr) public view returns (uint) {
        return myMap[_adr];
    }
    function setMapping(address _adr, uint _value) public {
        myMap[_adr] = _value;
    }
    function deleteAddress(address _adr) public {
        delete myMap[_adr];
    }
}
pragma solidity >=0.7.0 <0.9.0;

contract loopFunds {
    constructor(address owner) public {
        owner = msg.sender;
    }
    mapping(address => uint) public funds;
    address receiver;
    address public owner;
    
    modifier onlyOwner() {
         require(owner == msg.sender);
         _;
    }
    
    function returnFunds(uint amount) public  returns (bool success) {
        require(funds[msg.sender] < amount);
        receiver = msg.sender;
        funds[receiver] -= amount;
        receiver.transfer(amount);
        return true;
    }
    
}
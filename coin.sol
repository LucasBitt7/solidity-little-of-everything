pragma solidity >=0.7.0 <0.9.0;

contract Coin {
    address public minter;
    mapping(address => uint) public balances;
    
    event Sent(address From, address To, uint amount);
    error InsufficientBalance(uint requested, uint available);
    
    constructor() {
        minter = msg.sender;
    }
    
    function mint(address receiver, uint amount) public {
        require(minter == msg.sender);
        balances[receiver] += amount;
    }
    
    function send(address receiver, uint amount) public {
        if(amount > balances[msg.sender]) {
        revert InsufficientBalance({
            requested: amount,
            available: balances[msg.sender]
        });}
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }
    
}
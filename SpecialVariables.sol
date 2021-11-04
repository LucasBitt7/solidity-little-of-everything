pragma solidity >= 0.6.0 < 0.9.0;

contract LedgerBalance {
    mapping(address => uint) balance;
    
    function setNewBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
}
contract newLedgerBalance is LedgerBalance{
    
    function setNewBalanci() public {
       LedgerBalance contractBlockUsavel = new LedgerBalance();
       contractBlockUsavel.setNewBalance(30);
    }
    function getBalance() public view returns (uint) {
        return balance[msg.sender];
    }
}
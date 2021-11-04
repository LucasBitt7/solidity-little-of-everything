pragma solidity >= 0.6.0 < 0.9.0;

contract erroHandling{
    address public seller;
    
    modifier onlySeller() {
        require(seller == msg.sender);
        _;
    }
    
    function becomeASeller() public{
        seller = msg.sender;
    }
    
    function sell(uint amount) public payable onlySeller {
        if (amount > msg.value){
            revert("thats not enough");
        }
    }

}
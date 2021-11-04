pragma solidity >= 0.7.0 < 0.9.0; 

contract Auction {
    address payable public beneficiary;
    address public highestBidder;
    uint public highestBid;
    uint public endTime;
    bool ended;
    
    mapping(address => uint) bid;
    
    event HighBidIncreased(address bidder, uint amount);
    event auctionEnded(address winner, uint amount);
    
    constructor(uint biddingTime, address payable _beneficiary) {
       beneficiary = _beneficiary;
       endTime = block.timestamp + biddingTime;
    }
    
    function newBid() public payable {
        if(block.timestamp > endTime) revert("the time is over"); 
        if(msg.value < highestBid) revert("the bid need be bigger");
        if(highestBid != 0) {
            bid[highestBidder] += highestBid;
        }
        highestBidder = msg.sender;
        highestBid = msg.value;
        
        emit HighBidIncreased(highestBidder, highestBid);
    }
    
    function withdraw() public payable returns(bool) {
        uint amount = bid[msg.sender];
        if(amount > 0){
            bid[msg.sender] = 0;
    }
        if (!payable(msg.sender).send(amount)){
            bid[msg.sender] = amount;
    }
        return true;
    }
    
    function endAuction() public {
        if(block.timestamp < endTime) revert("the time is not over"); 
        if(ended) revert("Auction is over");
        ended = true;
        emit auctionEnded(beneficiary, highestBid);
        beneficiary.transfer(highestBid);
    }
    
    function sethighestBid() public view returns(uint) {
        return highestBid;
    }
}
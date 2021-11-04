pragma solidity >= 0.6.0 < 0.9.0;

contract Oracle{
    address admin;
    uint public rand;
    
    constructor() public {
        admin = msg.sender;
    }
    
    function setnd(uint _value) external {
        require( admin == msg.sender );
        rand = _value;
    }
}
contract Oracle2{
    Oracle oracle;
    constructor(address oracleAddress) public {
        oracle = Oracle(oracleAddress);
    }
        function randMond(uint range) external view returns (uint) {
        return uint(keccak256(abi.encodePacked(oracle.rand, block.difficulty, msg.sender))) % range;
    }
}


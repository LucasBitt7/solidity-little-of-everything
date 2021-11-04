pragma solidity >= 0.6.0 < 0.9.0;

contract ModifierOwner {
    address owner;
    
    constructor() public {
    owner = msg.sender;
}

    modifier onlyOwner {
        require(owner == msg.sender);
        _;// para falar q vai continuar rodando a funmcao
    }
}
contract Register is ModifierOwner {
    mapping(address => bool) registeredAddress;
    uint price;
    
    constructor(uint _price) public {
        price = _price;
    }
    
    function setPrice(uint _price) public onlyOwner {
        price = _price;
    }
    function registerAddress() public payable {
        registeredAddress[owner] = true;
    }
}
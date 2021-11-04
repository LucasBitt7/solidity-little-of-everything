pragma solidity >= 0.6.0 < 0.9.0;

contract Register {
     uint price;
    
    constructor(uint _price) public {
    price = _price;
}
        modifier minimumAmount(uint price) {
        require(msg.value >= price);
        _;// para falar q vai continuar rodando a funmcao
    }
    mapping(address => bool) registeredAddress;

    function setPrice(uint _price) public {
        price = _price;
    }
    function registerAddress() public minimumAmount(30) payable {
        registeredAddress[msg.sender] = true;
    }
}
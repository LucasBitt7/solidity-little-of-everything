pragma solidity >= 0.6.0 < 0.9.0;

contract Assembly{

function addToEVM() public {
    bytes memory data = new bytes(10);
    bytes32 data32;
    assembly {
        data32 := mload(add(data,32));
    }
}
}
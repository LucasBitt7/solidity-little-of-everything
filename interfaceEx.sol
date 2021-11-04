pragma solidity >= 0.6.0 < 0.9.0;

contract Counter{

    uint public counter;
    function increment() external {
        counter ++;
    }
}
interface ICounter{
    
    function counter() external view returns(uint);
    function increment() external;
}
contract MyContract {
    address icounter;
    constructor(address _counter) {
        icounter = _counter;
    }
    function incrementCounter() external {
        ICounter(icounter).increment();
    }
     function getCounter() external view returns(uint) {
         return  ICounter(icounter).counter();
     }
}
pragma solidity >= 0.6.0 < 0.9.0;
contract C {
    uint private data;
    uint public info;
    
    constructor() {
        info = 10;
    }
    function increment(uint _a) private pure returns(uint) {
        return _a++;
    }
    function dupDate(uint _a) public {
       data = _a;
    }
    function getDate() public view returns(uint){
       return data;
    }
    function calculate(uint _a, uint _b) public pure returns(uint){
       return _a + _b;
    }
}
contract D {
    C c = new C(); // assim nao ṕrecisa botar o IS
    function getDateC() public view returns(uint){
       return c.info();
    }
}
 contract E is C{
    uint private result;
    C private c;
    
    constructor() {
        c = new C();
    }
    function getComputeded() public {
       result = calculate(23,5);
    }
    function getResult() public view returns(uint){
       return result;
    }
    function getDateC() public view returns(uint){
       return c.info();
    }
 }
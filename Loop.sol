pragma solidity >= 0.6.0 < 0.9.0;

contract loopContract {
    
  uint [] public numberList = [1,2,3,4,5,6,7,8,9,10];    
    
  function checkNums(uint _num1, uint _num2) public view returns (bool) {
      if( _num1 % _num2 == 0) {
          return true;
      } else {
          return false;
      }
  }  
  function checkArray(uint _num) public view returns (uint) {
      uint count = 0;
      for(uint i; i < numberList.length; i++) {
          if ( checkNums(numberList[i], _num)) {
              count++;
          }
      }
      return count;
  }
}
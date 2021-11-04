pragma solidity >= 0.6.0 < 0.9.0;

contract loopExercise {
    
    uint [] public longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] public numberList = [1,4,34,56];
    
    function validadeList(uint num) public view returns (bool) {
        bool numberValidate = false;
        for (uint i; i < numberList.length; i++) {
            if (numberList[i] == num) {
                numberValidate = true;
            } 
            return numberValidate;
        }   
    }
    function loops(uint num) public view returns (uint) {
        uint count = 0;
        for (uint i; i < longList.length; i++) {
        if (longList[i]% num  == 0) {
            count++;
            }
        }
        return count;
    }
}
    
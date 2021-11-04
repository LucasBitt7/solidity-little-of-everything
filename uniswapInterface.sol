pragma solidity >= 0.6.0 < 0.9.0;

interface UniswapV2Pair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}
interface  UniswapV2Factory{
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}
contract LiquidityValueCalculator{
    address public factory;
    address private constant AAVE = 0x7Fc66500c84A76Ad7e9c93437bFc5Ac33E2DDaE9;
    address private constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    constructor(){
        factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    }
    function calculePairValue() public returns(uint, uint){
        
        address pair =  UniswapV2Factory(factory).getPair(AAVE, DAI);
         (uint reserveA, uint reserveB,) = UniswapV2Pair(pair).getReserves();
       return(reserveA,reserveB);
    }
}

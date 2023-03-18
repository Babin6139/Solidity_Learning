//Pure functions ensure that they not read or modify the state. 

//SPDX-License-Identifier:UNLICENSED

pragma solidity ^0.8.17;

contract Test{
    function getResult() public pure returns (uint product,uint sum){
        uint a=1;
        uint b=2;
        product=a+b;
        sum=a+b;
    }
}
//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.17;

contract LearningDataType{
    address x=0x5d69095b2a0E4d13a8393D6C252E38a24D8017ee;
    function getBalance() public view returns (uint){
        return x.balance;
    }

    function compare() public view returns (uint) {
        if(x.balance <200){
            return x.balance+100;
        }
        return x.balance;
    }
}
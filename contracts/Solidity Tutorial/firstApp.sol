//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.17;

contract SolidityTest{
    constructor() public{
    }

    function getResult() public view returns (uint){
        //This is a comment

        /*
        This is a multi line comment
        */
        uint a =1;
        uint b =2;
        uint result= a + b;
        return result;

    }
}
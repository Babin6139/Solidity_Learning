//Types of variables:State,Local and Global Variables

//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.17;

contract SolidityTest{
    uint storedData; //State variable

    constructor() public{
        storedData=10; //Using state variable
    }

    function getResult() public view returns (uint){
        uint a=1; //local variable
        uint b=2;
        uint result=a+b;
        return storedData; //access the state variable
    }
}

//Variable names are case sensitive

/*Global variables are special variables exist in global workspace
and provide information about blockchain and transaction
properties like block.timestamp() etc */
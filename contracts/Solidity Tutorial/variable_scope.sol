//State variable -> Public or Private or Internal
//Local variable is limited to function in which they are defined


//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.17;

contract C{
    uint public data=30;
    uint internal iData=10;

    function x() public returns (uint){
        data=3; //Internal access
        return data;
    }
    
    function z() private{
        data=44;
    }
}

contract Caller{
    C c=new C();
    function f() public view returns (uint){
        return c.data(); //external access
    }
}

contract D is C{

    //Function cannot be declared as view because this expression modifies the state
    function y() public returns (uint){
        iData=3; //Internal access
        return iData;
    }

    function getResult() public view returns (uint){
        uint a=1; //local variable
        uint b=2;
        uint result=a+b;
        return data; //access the state variable
    }
}
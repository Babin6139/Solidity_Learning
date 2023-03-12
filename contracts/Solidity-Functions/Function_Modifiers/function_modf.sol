//SPDX-License-Identifier:UNLICENSED

pragma solidity ^0.8.17;
//Function Modifiers are used to modify the behaviour of a function. For example to add a prerequisite to a function.
contract Owner{
    address owner;
    constructor() public{
        owner=msg.sender;
    }
    modifier onlyOwner{
        require(
            msg.sender==owner
        );
        _;
    }

    modifier costs(uint price){
        if(msg.value >=price){
            _;
        }
    }
}

contract Register is Owner{
    mapping (address=>bool) registerAddress;
    uint price;

    constructor(uint initialPrice) public{
        price=initialPrice;
    }

    function register() public payable costs(price){
        registerAddress[msg.sender]=true;
    }

    function changePrice(uint _price) public onlyOwner{
        price=_price;
    }
}
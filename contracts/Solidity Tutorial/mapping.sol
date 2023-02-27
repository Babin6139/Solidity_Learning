//mapping(_KeyType=>_ValueType)
/*
_KeyType − can be any built-in types plus bytes and string. No reference type or complex objects are allowed.
_ValueType − can be any type.
*/

//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.17;

contract LedgerBalance{
    mapping(address=>uint) public balances;

    function updateBalance(uint newBalance) public{
        balances[msg.sender]=newBalance;
    }
}

contract Updater{
    function updateBalance() public returns (uint){
        LedgerBalance ledgerBalance=new LedgerBalance();
        ledgerBalance.updateBalance(10);
        return ledgerBalance.balances(address(this));
    }
}
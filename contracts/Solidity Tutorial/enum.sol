//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.17;

contract test{
    enum FreshJuiceSize{Small,Medium,Large}
    FreshJuiceSize choice;
    FreshJuiceSize constant defaultChoice=FreshJuiceSize.Medium;

    function setLarge() public{
        choice=FreshJuiceSize.Large;
    }

    function getChoice() public view returns (FreshJuiceSize) {
        return choice;
    }

    function getDefaultChoice() public pure returns (uint){
        return uint(defaultChoice);
    }
}
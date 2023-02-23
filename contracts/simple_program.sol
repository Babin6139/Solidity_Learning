//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;
/* 
    import "filename" 'import all global symbols'
    import * as symbolName from "filename"
    To import a file x from the same directory as the current file,
    use import "./x" as x;. 
    If you use import "x" as x; instead, 
    a different file could be referenced in a global "include directory".
*/

contract SimpleStorage{
    uint storedData;

    function set(uint x) public {
        storedData=x;
    }

    function get() public view returns (uint){
        return storedData;
    }
}
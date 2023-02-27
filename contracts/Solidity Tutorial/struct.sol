//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.17;

contract test{
    struct Book{
        string title;
        string author;
        uint book_id;
    }
    Book book;

    function setBook() public{
        book=Book("learn solidity","TP",1);
    }

    function getBookId() public view returns (uint){
        return book.book_id;
    }
}
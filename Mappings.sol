// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Mappings{
    //mapping
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor(){
        names[1] = "Sam";
        names[2] = "David";
        names[3] = "Joy";
    }

    function addBooks(
        uint _id,
        string memory _title , 
        string memory _author) 
        public {
        books[_id] = Book(_title, _author);
    }

      function addMyBooks(
        uint _id,
        string memory _title, 
        string memory _author) 
        public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

}

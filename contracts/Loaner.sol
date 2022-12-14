// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.17;

contract Loaner {
    // immutable
    uint public creationDate;
    address public lender;
    address public borrower;
    uint public sum;
    
    function Lottery() public {
        creationDate = block.timestamp;
        sum = 0;
    }

    function setLender() public {
        require(msg.sender != borrower);
        require(lender == 0);
        lender = msg.sender;
    }

    function setBorrower() public {
        require(msg.sender != lender);
        require(borrower == 0);
        borrower = msg.sender;
    }

    function setSum(uint newSum) public {
        require(sum == 0);
        sum = newSum;
    }
}
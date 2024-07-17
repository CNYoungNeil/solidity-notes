// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/*
1.允许任何用户可以向合约捐款
2.允许合约将款提出
3.可以看到每个用户捐了多少
4.设定一个最小捐款金额50U，否则捐款失败
*/

contract FundMeNeil{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

// 要求是合约本人操作
    modifier OnlyOwner {
        require(msg.sender == owner, "Only owner can call this function!");
        _; 
    }

// 要求大于最小捐款值
    modifier MinFund {
        require(msg.value > 1 ether, "Please input a amount over 1e!"); //这里1 ether也可以写成1e18，因为默认单位为wei
        _;
    }


    // fund
    function Fund() public payable {

    }

    function Withdraw() public OnlyOwner{

    }
}
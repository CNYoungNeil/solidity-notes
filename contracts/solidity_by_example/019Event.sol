// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Event{
    event Log(address indexed sender, string message);  //这个indexed表示将这个变量记录到日志log里面，一个合约最多indexed 3个变量
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World");
        emit Log(msg.sender, "Hello Evm");
        emit AnotherLog();
    }

}
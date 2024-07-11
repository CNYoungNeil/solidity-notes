// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Immutable {
    address public immutable my_address;
    uint public immutable num;

// 所有immutable的变量，仅仅可以在这个合约里面的构造函数里面进行修改，之后则和常量一样不可修改
    constructor(uint _myUint) {
        my_address = msg.sender; //msg.sender表示“消息的发送者地址”，这个是全局变量，可以直接使用
        num = _myUint;
    }
}
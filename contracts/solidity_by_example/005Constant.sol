// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Variables{
    address public constant addr = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc; //不论什么数据类型，constant表示常量，不可修改或赋值
    uint public constant num1 = 12332;

    function change() public {
        // num1 = 1131; 这样写会报错
    }
}



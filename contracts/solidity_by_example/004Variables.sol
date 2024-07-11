// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Primitives{
    bool public boo; //sodility的初始默认值是False

    uint8 public num = 3; //uint8是非负整数，最大值是2^8-1 = 255

    int8 public number = -1; //允许是负数,最小到-128

    address public addr; //每个合约都有一个地址
}
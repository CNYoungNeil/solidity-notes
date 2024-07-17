// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./020SimpleStorage.sol";

contract SonContract is SimpleStorage{

// 重写store方法有两个条件：1.在父合约里面的store方法加上virtual关键字。 2.在重写方法上加上override关键字
    function store(uint _favorateNum) override public {
        favoriteNumber = _favorateNum;
    }
}
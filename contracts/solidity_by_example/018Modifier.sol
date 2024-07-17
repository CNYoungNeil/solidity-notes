// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ModifierExample  {

    // 用户提款案例，需要验证2点：1.用户身份地址。 2.用户提款金额必须大于最小值
    address public owner;
    uint public minValue = 10;

    constructor() {
        owner = msg.sender; //获取发送交易者的地址
    }

    modifier OnlyOwner {
        require(msg.sender == owner, "Only owner can call this function");
        _; // 表示限制要求在函数执行前
    }

    modifier MinValueCheck(uint _value) {
        require(_value >= minValue, "Value must be greater than or equal to minValue");
        _; // 表示限制要求在函数执行前
    }

// 将"onlyOwner"和"minValueCheck"这2条限制加在这个function上。相当于对function设置两条限制条件
    function Withdraw(uint amount) public OnlyOwner MinValueCheck(amount) {
        // Only owner can withdraw and amount must be greater than or equal to minValue
        // 实际的提款逻辑
    }

}

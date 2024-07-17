// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FunctionModifier{
    address public owner;
    uint public x = 10;
    bool public locked; //初始为false

    constructor(){
        owner = msg.sender; //自动赋值合约部署者地址
    }

// modifier用于添加限制
    modifier OnlyOwner(){
        require(msg.sender == owner, "you are not contract owner");
        _;  //_;写在限制条件后，表示先限制，再执行添加了这条modifier的函数
    }

    modifier ValidAddress(address _addr){
        require(_addr != address(0), "please input your address");
        _;
    }

// 确保修改地址的身份的ACCOUNT，必须是Owner的地址
    function changeOwner (address _newAddr) public OnlyOwner ValidAddress(_newAddr){
        owner = _newAddr;
    }

    // 确保函数不会被重录
    modifier noReentrancy(){
        require(!locked, "No reentrancy!"); //这里之所以要用!locked，是因为locked默认是false，!locked表示判断语句是ture，则不会报错
        locked = true;
        _;
        locked = false; //函数执行完成，归位
    }

    function decrement(uint i) public {
        x -= i;
        if (i>1){
            decrement( i-1);    //调用了自身，没有限制则会无限递归下去
        }
    }
}
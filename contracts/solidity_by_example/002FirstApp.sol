// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Variables{
    //unit初始默认值为0，也可以设置一个值
    uint public count;

    function get() public view returns(uint){
        return count;
    }  

    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -= 1;
    }
}
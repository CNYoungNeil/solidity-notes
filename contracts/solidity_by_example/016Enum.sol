// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Enum{
    // 枚举体（不常用）
    enum Status{
        Pending,    //0
        Shipped,    //1
        Accepted,   //2
        Rejected,   //3
        Canceled    //4
    }

// 枚举体的默认值就是Pending
    Status public status;

    function get() public view returns (Status){
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mapping{
    // mapping语法是mapping(keyType关键值 => valueType某个值类型)一一匹配起来
    // keyType的类型可以是string bool int address bytes 或者是某个已经部署的合约
    // valuetype可以是多种类型，甚至可以说一个mapping或者一个array（有点像集合的概念）

    mapping (address => uint) public myMap; //定义一个叫myMap的mapping，是将uint和address类型的数据绑定
    
    function getbyAddr(address _addr) public view returns (uint){
        return myMap[_addr];    //这里的myMap[_addr]就应该对应，传进来这个key:_addr对应的value:的值；具体值根据入参来决定
    }

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;  //更新每个_addr的值
    }
// 使用方法：用set函数，给地址和值赋值传进去，可以设置多次存放多组。然后使用地址和get来查询

    function deletemyMap(address _addr) public {
        delete myMap[_addr];    //将该地址的值重置为0
    }
}
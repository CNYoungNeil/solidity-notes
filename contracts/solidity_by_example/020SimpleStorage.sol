// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage{
    uint favoriteNumber;

    struct People{
        uint age;
        string name;
    }

    People[] public person;

    mapping(string => uint) public getAgeByName;


    function store(uint _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint){
        return favoriteNumber;
    } 

// calldata 和 memory 的区别。calldata是传入的参数在function内不可修改；memory是值仅存在于内存中（只有struct/mapping/Array的变量参数才需要加memory）
    function addPerson(uint _age, string memory _name) public {
        person.push(People({age:_age, name:_name}));
        getAgeByName[_name] = _age;
    }
}

/*
到下一个合约重新写，把这个合约import
contract StorageFactory{
    SimpleStorage public simpleStorage; //新建一个SimpleStorage合约实例

    function CreateSimpleStorage() public {
        simpleStorage = new SimpleStorage();    //将“SimpleStorage()”新建一个对象给simpleStorage，则simpleStorage就有了地址
    }
}

*/
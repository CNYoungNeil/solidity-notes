// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./020SimpleStorage.sol";    //如果是外部导入，需要地址

contract StorageFactory{
    SimpleStorage[] public simpleStorageArray; //新建一个装SimpleStorage合约的数组

    function CreateSimpleStorage() public {
        // SimpleStorage simpleStorage = new SimpleStorage();    //将“SimpleStorage()”新建一个对象给simpleStorage，则simpleStorage就有了地址
        // simpleStorageArray.push(simpleStorage);

        simpleStorageArray.push(new SimpleStorage());
    }

// 利用SimpleStorage里面的方法store，来存储一个favoriteNumber
    function SFstore(uint _simpleStorageIndex, uint _SFNumber) public {
        simpleStorageArray[_simpleStorageIndex].store(_SFNumber);
    }

// 利用SimpleStorage里面的方法retrieve，来获取存储的最喜欢数
    function SFretrieve(uint _simpleStorageIndex) public view returns (uint){
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
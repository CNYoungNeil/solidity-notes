// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/*
    结构体，较常用
*/
contract StutdentsStruct{
    struct Student{
        string name;
        uint grade;
        bool pass;
    }

// 这个变量如果是public的变量，那么则就自动获得了get方法，直接部署就能获取。否则，就自己写一个get方法
    Student[] public stu;

    function set(string calldata _name, uint _grade, bool _pass) public {   //calldata表示这个属性不可在合约中修改，只能可读
        // 第一种：往数组传参数方法。有序
        // stu.push(Student(_name, _grade, _pass));

        // 第二种：指定关键字传参数。可以打乱顺序。但是参数不能出现数据类型相同的情况
        // stu.push(Student({pass:_pass, name:_name, grade:_grade})); //注意别忘记大括号

        // 第三种：先通过一个memory方法建立一个空的变量
        Student memory myStu;
        myStu.name = _name;
        myStu.grade = _grade;
        myStu.pass = _pass;
        stu.push(myStu);

    }

    function updateName(uint _index, string calldata _name) public {
        Student storage newStu = stu[_index];  //通常而言，一个变量就是storage属性。storage属性表示是永久存储与区块链上的，相对应不同的关键字还有memory和calldata
        newStu.name = _name;
    }



}
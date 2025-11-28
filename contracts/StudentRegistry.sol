// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract StudentRegistry {
    struct Student {
        string name;
        uint age;
    }

    mapping(address => Student) public students;

    function register(string memory _name, uint _age) public {
        students[msg.sender] = Student(_name, _age);
    }

    function getStudent(address _addr) public view returns (string memory, uint) {
        Student memory s = students[_addr];
        return (s.name, s.age);
    }

    function isRegistered(address _addr) public view returns (bool) {
        return bytes(students[_addr].name).length > 0;
    }
}

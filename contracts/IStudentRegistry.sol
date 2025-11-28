// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface IStudentRegistry {
    function register(string memory _name, uint _age) external;
    function getStudent(address _addr) external view returns (string memory, uint);
    function isRegistered(address _addr) external view returns (bool);
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Receiver {
    function compute(uint a, uint b) external pure returns (uint sum, uint difference, uint product, uint quotient)
    {
        sum = a + b;
        difference = a - b;
        product = a * b;
        quotient = a / b;
    }
}

interface IReceiver {
    function compute(uint a, uint b) external pure returns (uint, uint, uint, uint);
}

contract Caller {
    function callCompute(address receiverAddr, uint a, uint b) external pure returns (uint, uint, uint, uint)
    {
        return IReceiver(receiverAddr).compute(a, b);
    }
}
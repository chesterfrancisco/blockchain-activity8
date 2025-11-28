// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FirstParent {
    function firstFunction() public pure returns (string memory) {
        return "First function";
    }

    function secondFunction() public pure returns (string memory) {
        return "Second function";
    }
}

contract SecondParent {
    function thirdFunction() public pure returns (string memory) {
        return "Third function";
    }
}

contract Child is FirstParent, SecondParent {    
}

/**
 *Submitted for verification at BscScan.com on 2023-03-30
*/

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

/*
interface Isolution {
    function solution(uint256 value) external;
}
*/

contract Level_4_Solution {
        
    //saving value to storage slot 3
    function solution(uint256 value) external {
        assembly {
            sstore(3, value)
        }
    }
    
}
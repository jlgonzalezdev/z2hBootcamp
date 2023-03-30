/**
 *Submitted for verification at BscScan.com on 2023-03-30
*/

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

/* 
  interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
  }
*/

contract Level_2_Solution {
        
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray){
    sortedArray = unsortedArray;
    for (uint i = 0; i < sortedArray.length; i++) {
        uint minIndex = i;
        for (uint j = i + 1; j < sortedArray.length; j++) {
            if (sortedArray[j] < sortedArray[minIndex]) {
                minIndex = j;
            }
        }
        if(minIndex != i) {
            uint256 temp = sortedArray[i];
            sortedArray[i] = sortedArray[minIndex];  
            sortedArray[minIndex] = temp;  
        }
    }
}

}
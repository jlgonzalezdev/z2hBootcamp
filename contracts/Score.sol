// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Score {
    uint256 score;
    address public owner;

    event scoreUpdated(uint256);

    modifier onlyOwner {
        require(msg.sender==owner, "not allowed");
        _;
    
    }

    function getScore() public view returns (uint256) {
        return score;
    }

    constructor() {
        score = 100;
        owner  = msg.sender;
    }

    function setScore(uint256 _newScore) public onlyOwner{
        score = _newScore;
        emit scoreUpdated(_newScore);
    }
    
}

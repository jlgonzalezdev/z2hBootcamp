// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract BootcampContract {

    uint256 number;
    address public deployer;
    address constant defaultAddress = 0x000000000000000000000000000000000000dEaD;

    constructor() {
        deployer  = msg.sender;
    }

    function store(uint256 num) public {
        number = num;
    }


    function retrieve() public view returns (uint256){
        return number;
    }

    function getAddress() external view returns (address) {
        if( msg.sender == deployer) {
            return defaultAddress;
        }
        return deployer;

    }
}



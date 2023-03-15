// SPDX-License-Identifier: UNLICENSED .
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract JLBTCoin is ERC20{
 constructor(uint256 initialSupply) ERC20("JLBTCoin", "JLBTC") {
        _mint(msg.sender, initialSupply);
    }
    
}
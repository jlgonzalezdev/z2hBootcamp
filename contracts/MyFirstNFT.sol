// SPDX-License-Identifier: UNLICENSED .
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyFirstNFT is ERC721{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
 constructor() ERC721("MyFirstNFT", "MFNFT") {
        _mint(msg.sender, _tokenIds.current());
        _tokenIds.increment();
    }

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }
    
}
// SPDX-License-Identifier: GPL-3.0
        
pragma solidity >=0.4.22 <0.9.0;

// This import is automatically injected by Remix
import "remix_tests.sol"; 

// This import is required to use custom transaction context
// Although it may fail compilation in 'Solidity Compiler' plugin
// But it will work fine in 'Solidity Unit Testing' plugin
import "remix_accounts.sol";
import "../contracts/MyFirstNFT.sol";

// File name has to end with '_test.sol', this file can contain more than one testSuite contracts
contract testSuite {
    MyFirstNFT _nft;
    /// 'beforeAll' runs before all other tests
    /// More special functions are: 'beforeEach', 'beforeAll', 'afterEach' & 'afterAll'
    function beforeAll() public {
        // <instantiate contract>
        _nft = new MyFirstNFT();
    }

    function weCanMint() public returns(bool) {
        _nft.mint(address(0),1);
        Assert.equal(uint256(1), uint256(1), "all good");
        return true;
    }
}
    
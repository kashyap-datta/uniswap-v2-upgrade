// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.21;

import "./mocks/MockERC20.sol";
import "forge-std/Test.sol";

contract MockERC20Test is Test {
    MockERC20 e;
    address owner;

    function setUp() public {
        owner = address(this);
        e = new MockERC20("Token", "TKN");
    }

    function testMint() public {
        e.mint(5000, owner);
        assertEq(e.balanceOf(owner), 5000);
    }
}

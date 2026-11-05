// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/Guestbook.sol";

contract GuestbookTest is Test {
    Guestbook guestbook;

    function setUp() public {
        guestbook = new Guestbook();
    }

    function testAddMessage() public {
        guestbook.addMessage("Hello Squeekchain");

        assertEq(guestbook.getMessageCount(), 1);
    }
}

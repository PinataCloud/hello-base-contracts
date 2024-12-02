// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {HelloBase} from "../src/HelloBase.sol";

contract HelloBaseTest is Test {
    HelloBase public helloBase;

    function setUp() public {
        helloBase = new HelloBase();
    }

    function test_SetGreeting() public {
        string memory testGreeting = "Hello, Base!";
        helloBase.setGreeting(testGreeting);
        assertEq(helloBase.getGreeting(), testGreeting);
    }

    function testFuzz_SetGreeting(string memory fuzzGreeting) public {
        helloBase.setGreeting(fuzzGreeting);
        assertEq(helloBase.getGreeting(), fuzzGreeting);
    }
}

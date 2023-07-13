// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    function testGreet() public {
        assertEq(helloWorld.greet(), "Hello World");
    }

    function testFailGreet() public {
        assertEq(helloWorld.greet(), "Hello Toto");
    }
}

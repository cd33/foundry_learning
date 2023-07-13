// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function testSetNumber() public {
        console.log("yooooooooooooooo");
        simpleStorage.setNumber(1);
        assertEq(simpleStorage.number(), 1);
    }
}

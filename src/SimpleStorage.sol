// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/console.sol";

contract SimpleStorage {
    uint256 public number;

    function setNumber(uint256 _number) external {
        console.log("Previous number", number);
        number = _number;
    }
}

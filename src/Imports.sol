// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "solmate/tokens/ERC20.sol";

contract Token is ERC20("Bibs", "BIB", 18) {
// constructor() ERC20("Bibs", "BIB", 18) {}
}

import "@openzeppelin/token/ERC721/ERC721.sol";

contract NFT is ERC721("Bibs", "BIB") {}

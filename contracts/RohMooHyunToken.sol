// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RohMooHyunToken is ERC20 {
    constructor(address owner) ERC20("Roh Moo-hyun", "RMH") {
        uint256 totalSupply = 1000000 * (10 ** decimals());
        uint256 ownerSupply = 900000 * (10 ** decimals());

        _mint(owner, ownerSupply); // Mint 90% of the tokens to your address
        _mint(address(this), totalSupply - ownerSupply); // Mint the remaining 10% of the tokens to the contract address (or another address of your choice)
    }
}
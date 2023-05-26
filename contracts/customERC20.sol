// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "contracts/ERC-20.sol";

contract customERC20 is ERC20 {

    // Smart COntract Constructor
    constructor() ERC20("ZoeCoin", "ZOE"){}

    // Creation of new Tokens
    function createTokens() public {
        address minter = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        require(msg.sender == minter, "ERC20: only the creator can mint tokens");
        _mint(msg.sender, 100);
    }
}

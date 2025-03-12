// SPDX-License-Identifier:MIT

//   /$$$$$$  /$$   /$$  /$$$$$$  /$$$$$$ /$$   /$$  /$$$$$$  /$$$$$$$  /$$   /$$ /$$$$$$$$ /$$$$$$$  /$$$$$$$$
//  /$$__  $$| $$  | $$ /$$__  $$|_  $$_/| $$$ | $$ /$$__  $$| $$__  $$| $$  | $$| $$_____/| $$__  $$| $$_____/
// | $$  \__/| $$  | $$| $$  \ $$  | $$  | $$$$| $$| $$  \__/| $$  \ $$| $$  | $$| $$      | $$  \ $$| $$      
// | $$      | $$$$$$$$| $$$$$$$$  | $$  | $$ $$ $$|  $$$$$$ | $$$$$$$/| $$$$$$$$| $$$$$   | $$$$$$$/| $$$$$   
// | $$      | $$__  $$| $$__  $$  | $$  | $$  $$$$ \____  $$| $$____/ | $$__  $$| $$__/   | $$__  $$| $$__/   
// | $$    $$| $$  | $$| $$  | $$  | $$  | $$\  $$$ /$$  \ $$| $$      | $$  | $$| $$      | $$  \ $$| $$      
// |  $$$$$$/| $$  | $$| $$  | $$ /$$$$$$| $$ \  $$|  $$$$$$/| $$      | $$  | $$| $$$$$$$$| $$  | $$| $$$$$$$$
//  \______/ |__/  |__/|__/  |__/|______/|__/  \__/ \______/ |__/      |__/  |__/|________/|__/  |__/|________/
                                                                                                            
                                                                                                            
                                                                                                            

pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

 contract Token is ERC20, ERC20Burnable, Ownable(msg.sender) {
    constructor() ERC20("ChainSphereToken", "CSP") {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
    }

    function mintTokens(address receiver, uint256 amount) external onlyOwner {
      require(amount > 0, "invalid amount");
      _mint(receiver, amount);
    }
 }

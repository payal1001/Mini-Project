//contracts/token.sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract token is ERC20Capped, ERC20Burnable {
address payable public owner;
uint256 public blockReward;
 constructor(uint256 cap, uint256 reward) ERC20("token","pp") ERC20Capped(cap * (10 ** decimals ())) {
    owner = msg.sender;
 _mint(owner, 70000000 *(10 ** decimals()));
 blockReward = reward*(10 ** decimals());
 }

function _mintMinerReward(uint256 reward) internal  {
-mint(block.coinbase, blockReward)= reward*(10 ** decimals());
 } 

 function setblockReward(uint256 reward) public onlyOwner {
 blockReward = reward*(10 ** decimals());
 }

 modifier onlyOwner{
   require(msg.sender == owner, "Only the owner can cal this function");
   _;
 }
} 
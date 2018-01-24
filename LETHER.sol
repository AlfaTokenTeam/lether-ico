pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract LETHER is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function LETHER(address _owner)  UpgradeableToken(_owner) {
    name = "LETHER";
    symbol = "LYDT";
    totalSupply = 300000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
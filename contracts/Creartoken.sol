// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '../node_modules/@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol';


contract Creartoken is ERC20PresetMinterPauser {
  constructor() ERC20PresetMinterPauser("MyToken", "MyToken"){
    mint(address(this), 1000000 ether);
  }

  
}
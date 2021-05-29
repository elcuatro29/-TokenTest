// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '../node_modules/@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol';


contract Creartoken is ERC20PresetMinterPauser {
  mapping (address => mapping (address => uint256)) private _allowances;

//preguntar sobre el mapping y de todo.

  constructor() ERC20PresetMinterPauser("MyToken", "MyToken"){
    mint(address(this), 1000000 ether);
  }

  function mintcustom(address account, uint256 amount) public {
    _mint(account, amount);
  }

  function transfer(address account, uint256 amount) public virtual override returns (bool) {
    _transfer(_msgSender(), account, amount);
    return true;
  }

  function approve(address spender, uint256 amount) public virtual override returns (bool) {
    _approve(_msgSender(), spender, amount);
    return true;
  }  
  
  function allowance(address owner, address spender) public view virtual override returns (uint256 amount){
    return _allowances[owner][spender];
  }

}
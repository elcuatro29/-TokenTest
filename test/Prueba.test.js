const { BigNumber } = require("bignumber.js");
const { assert } = require("chai");
const Bluebird = require("bluebird");
const Creartoken = artifacts.require("Creartoken");

contract("Prueba de Creartoken.sol", (accounts) => {
  let tokencontract;
  

  // Initialize the contracts and make sure they exist
  before(async () => {
    tokencontract = await Creartoken.deployed()
  });

  describe("Prueba de minting y trasfer", () => {
    it("deberia ser sactifactoria", async () => { 
      await tokencontract.mint(accounts[0], 1000)
      const res = await tokencontract.transfer(accounts[1], 1000)
      assert.equal(res.logs[0].event, "Transfer")
    });
  });
})

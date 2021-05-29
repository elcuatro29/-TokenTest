const CrearToken = artifacts.require("Creartoken.sol");

module.exports = function (deployer) {
  deployer.deploy(CrearToken);
};
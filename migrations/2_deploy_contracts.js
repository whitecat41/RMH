const RohMooHyunToken = artifacts.require("RohMooHyunToken");

module.exports = function (deployer, network, accounts) {
  const owner = "0x4a25FADB34870E0e7ecF6f3AF5EC7066B6Ebc690"; // Your MetaMask wallet address
  deployer.deploy(RohMooHyunToken, owner);
};
const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("LockModule", (m) => {
  const deployerAddress = "0xffaa70c5897dde7d635260af6c196081d3a5ecc1";

  const lock = m.contract("Token", [], { from: deployerAddress });

  return { lock };
});

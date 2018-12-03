var greetings = artifacts.require("./greetings.sol");


module.exports = function(deployer) {
  // Use deployer to state migration tasks.
  deployer.deploy(greetings);
};

pragma solidity ^0.4.24;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption{
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    uint expectedId = 8;

    address expectedAdopter = this;

    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(8);

        Assert.equal(returnedId, expectedId,"Adoption of pet ID 8 should be recorded");
    }

    function testGetAdopterAddressByPetId() public {
        address adopter = adoption.adopters(expectedId);

        Assert.equal(adopter, expectedAdopter,"Owner of the expected pet should be this contract");
    }

    function testGetAdopterAddressByPetIdInArray() public {
        address[16] memory adopters = adoption.getAdopters();

        Assert.equal(adopters[expectedId], expectedAdopter,"Owner of the expected pet should be this contract");
    }
}
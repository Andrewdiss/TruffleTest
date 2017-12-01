pragma solidity ^0.4.11;

import 'truffle/Assert.sol';
import 'truffle/DeployedAddresses.sol';
import '../contracts/Adoption.sol';

/**
 * This contract does this and that...
 */
contract TestAdoption {
    // DeployedAddresses address of the contract 
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    // Test the adobt() function

    function testUserCanAdoptPet(){
        uint returnedId = adoption.adobt(8);
        uint expected = 8;

        Assert.equal(returnedId, expected, "Adoption of pet id 8 should be recorded");
    }

    // testing retrieval of a single pet`s owner

    function testGetAdopterAddressByPetId(){
        address expected = this;
        address adopter = adoption.addopters(8);

        Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded");
    }

    // Testing retrieval of all pet owners
    function testGetAdopterAddressByPetIdInArray(){
        address expected = this;

        address[16] memory addopters = adoption.getAdopters();
        Assert.equal(addopters[8], expected, "Owner of pet ID 8 should be recorded");
    }
}

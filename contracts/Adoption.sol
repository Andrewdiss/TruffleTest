pragma solidity ^0.4.4;

/**
 * This contract does this and that...
 */
contract Adoption {
    address[16] public addopters;

    function adobt (uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15); 
        
        addopters[petId] = msg.sender;

        return petId;
    }    

    // Retriveing the addopters
    function getAdopters() public returns(address[16]) {
        return addopters;
    }

}

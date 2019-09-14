pragma solidity ^0.5.0;

//sharing energy
contract Sharing {
    address[16] public prosumers;
    //sharing a resource
    function share(uint iotId) public returns (uint){
        require (iotId >= 0 && iotId <=  15);
        prosumers[iotId] = msg.sender;
        return iotId;
    }
    //retrieving the produmers
    function getProsumers() public view returns (address[16] memory){
        return prosumers;
    }   
}

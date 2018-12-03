pragma solidity ^0.4.0;

contract ModifierExample {

  address owner;
  string public name = "SimpleStorage";
  uint storedData;
  
  function ModifierExample(){
	owner = msg.sender
  }
  
  modifier ownerOnly(){
	if(owner == msg.sender){
		_;
	} else{
		throw;
	}
	
  }

  function set(uint x) public ownerOnly {
    storedData = x;
  }

  function get() public view returns (uint) {
    return storedData;
  }
}

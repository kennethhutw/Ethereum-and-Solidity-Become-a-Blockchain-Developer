// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ModifierExample {

  address private owner;
  string public name = "SimpleStorage";
  uint storedData;
  
   constructor() {
  
        owner = msg.sender; // 'msg.sender' is sender of current call, contract deployer for a constructor
    }
  
  modifier ownerOnly(){
	if(owner == msg.sender){
		_;
	} else{
		revert();
	}
	
  }

  modifier notZero(){
	if(storedData >0 ){
		_;
	} else{
		revert();
	}
	
  }

  function set(uint x) public ownerOnly {
    storedData = x;
  }

  function get() public view notZero returns (uint)  {
    return storedData;
  }
}

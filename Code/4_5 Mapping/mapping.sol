pragma solidity ^0.4.0;

contract MappingExample {
    mapping(address => uint) public balances;

    function update(uint newBalance) public {
        balances[msg.sender] = newBalance;
    }
	
	 function getBalance() constant public returns (uint){
        return balance[msg.sender];
    }
}


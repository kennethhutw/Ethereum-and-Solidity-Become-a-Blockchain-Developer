// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts@4.7.2/utils/math/SafeMath.sol";

contract LibraryExample{

  mapping (address => uint) public accounts;
  using SafeMath for uint256;	

  function deposit() public payable {
   	require((accounts[msg.sender] + msg.value) >= accounts[msg.sender]);
	 accounts[msg.sender] = accounts[msg.sender] .add(msg.value) ;
   }

   function withdraw(uint money) public {
        require(money <= accounts[msg.sender]);		
		 accounts[msg.sender] =  accounts[msg.sender].sub(money);	
		payable(msg.sender).transfer(money);
  }	
}
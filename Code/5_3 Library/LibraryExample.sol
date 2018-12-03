pragma solidity ^0.4.14;
import "github.com/OpenZeppelin/zeppelin-solidity/contracts/math/SafeMath.sol";

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
		msg.sender.transfer(money);
     }	
}
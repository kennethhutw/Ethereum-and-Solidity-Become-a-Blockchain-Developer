// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

contract VariableExample{
   int public firstSigned; //256 bits
   
   int8 public first8Signed = -128;
   
   uint public firstUnsigned;
   uint8 public first8Unsigned = 255;
   
   
   bool public isTrue = true;
   
   address public owner; //20 bytes
   
   //transfer balance
   constructor(){

   }
   
   function Variables() public payable{
       owner = msg.sender;
   }
   
   function getAddress() public view returns(address) {
       return address(this);
   }

    function getOwner() public view returns(address) {
       return owner;
   }
   
   function getBalance() public view returns(uint) {
       return address(this).balance;
   }
   
   function transferWei(address payable _address) public {
       _address.transfer(1000000000000000000);
   }

    fallback() external payable{
       
    }
    receive() external payable{
        
     }
    
}
pragma solidity ^0.4.0;

contract Variables{
   int firstSigned; //256 bits
   
   int8 first8Signed = -128;
   
   uint firstUnsigned;
   uint8 first8Unsigned = 255;
   
   
   bool isTrue = true;
   
   address firstAddress; //20 bytes
   
   //transfer balance
   
   function Variables() public payable{
       firstAddress = msg.sender;
   }
   
   function getAddress() public view returns(address) {
       return firstAddress;
   }
   
   function getBalance() public view returns(uint) {
       return firstAddress.balance;
   }
   
   function transferWei(address _address) public {
       _address.transfer(1000000000000000000);
   }
    
}
pragma solidity ^0.4.13;
contract  Animal{
       string public breed;
       uint public age;
       uint public weight;

      constructor() public {
            age = 1;
           weight = 1;
      }

      function sleep() pure public returns (string) {return “Zzzzzz”;}

      function talk() pure public returns (string);

}


contract Cat is Animal {

      constructor() public {
            breed = “Persian”;
            age = 1;
           weight = 1;
      }
       function talk() pure public returns (string) { return “miaow” ;};

}

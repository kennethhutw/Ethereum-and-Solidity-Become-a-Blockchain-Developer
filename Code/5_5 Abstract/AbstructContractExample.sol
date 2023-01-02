// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

abstract  contract  Animal{
       string public breed;
       uint public age;
       uint public weight;

      constructor()  {
            age = 1;
           weight = 1;
      }

      function sleep() pure public returns (string  memory) {return "Zzzzzz";}

      function talk() pure public virtual  returns (string  memory);

}


contract Cat is Animal {

      constructor()  {
            breed = "Zzzzzz";
            age = 1;
           weight = 1;
      }
       function talk() pure public override  returns (string memory) { return "meow~ meow" ;}

}

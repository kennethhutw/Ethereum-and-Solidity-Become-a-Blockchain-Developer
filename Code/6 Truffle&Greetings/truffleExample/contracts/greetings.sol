pragma solidity ^0.4.22;


contract greetings {
  string message;

  constructor() public {
      message = "I am ready";
  }

  function setGreetings (string _m) public {
    message = _m;
  }

  function getGreetings () public view returns (string){
    return message;
  }
}

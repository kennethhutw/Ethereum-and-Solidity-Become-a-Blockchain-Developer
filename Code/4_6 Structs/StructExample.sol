pragma solidity ^0.4.14;

contract StructExample {
    
    struct Contribution {
        uint amount;
        address contributor;
    }
    
    Contribution[] contributions;
    
    function contribute() public payable returns(uint id){
        contributions.push(
            Contribution({
                amount: msg.value,
                contributor: msg.sender
            })
            );
    }
    
    function getRefund(uint id) public returns (bool){
        
        require(contributions.length > id && contributions[id].amount != 0);
        
        uint amountToRefound = contributions[id].amount;
        
        contributions[id].amount = 0;
        
        
        contributions[id].contributor.transfer(amountToRefound);
        
        return true;
        
        
    }
    
    
}
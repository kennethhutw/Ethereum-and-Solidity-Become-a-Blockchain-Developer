// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract StructExample {
    
    struct Contribution {
        uint amount;
        address payable contributor;
    }
    
    Contribution[] contributions;
    
    function contribute() public payable {
        contributions.push(
            Contribution({
                amount: msg.value,
                contributor: payable ( msg.sender)
            })
            );
    }

     function getRefundInfo(uint id) public payable returns (Contribution memory){
        
        require(contributions.length > id );
        
        return  contributions[id];

    }

    function getLength() view public returns(uint){
        return contributions.length;
    }
    
    function getRefund(uint id) public payable returns (bool){
        
        require(contributions.length > id && contributions[id].amount != 0);
        
        uint amountToRefound = contributions[id].amount;
        
        contributions[id].amount = 0;
        
        
        contributions[id].contributor.transfer(amountToRefound);
        
        return true;
        
        
    }
    
    
}
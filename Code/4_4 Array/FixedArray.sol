pragma solidity ^0.4.24;

contract FixedArray{
    
    uint8[3] nums = [10, 20, 30];
    
    function getNums() public returns (uint8[3]){
        
        nums[0] = 11;
        nums[1] = 22;
        nums[2] = 33;
        
        return nums;
    }
    
    function getLength() view public returns(uint){
        return nums.length;
    }
    
}
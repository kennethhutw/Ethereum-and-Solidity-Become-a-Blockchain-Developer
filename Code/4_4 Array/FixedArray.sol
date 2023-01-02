// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract FixedArray{
    
    uint8[3] nums = [10, 20, 30];
    
    function getNums() public returns (uint8[3] memory){
        
        nums[0] = 11;
        nums[1] = 22;
        nums[2] = 33;
 
        
        return nums;
    }
    
    function getLength() view public returns(uint){
        return nums.length;
    }
    
}
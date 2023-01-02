// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

contract Score {
    uint24[] score;
    
    function addScore(uint24 s) public returns(uint24[] memory){
        score.push(s);
        return score;
        
    }
    
    function getLength() view public returns (uint){
        return score.length;
    }
    
    function clearArray() public returns (uint24[] memory){
        delete score;
        return score;
    }
}
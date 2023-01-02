// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

contract SimpleEnum {
    
    enum SpecialType {one, two, three, four, five}
    
    SpecialType var1;
    
    function set(){
        var1 = SpecialType.three;
    }
    
    function get() constant returns(SpecialType retVal){
        return var1;
    }
    
}
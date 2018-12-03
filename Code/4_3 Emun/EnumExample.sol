pragma solidity ^0.4.6;

contract SimpleEnum {
    
    enum SpecialType {one, two, three, four, five}
    
    SpecialType var1;
    
    function set(){
        var1 = SpecialType.one;
    }
    
    function get() constant returns(SpecialType retVal){
        return var1;
    }
    
}
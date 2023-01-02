// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


interface SolInterface {
    // Function declared in the interface
    function interfaceFunction() external  pure returns(uint8);
}

// This contract implements the interface
contract SomeContract is SolInterface {

    // Implementation of the interface function
    function interfaceFunction() external pure returns(uint8) {
        return 10;
    }

    function otherFunction() public pure {
        // This is not in the interface
    }
}

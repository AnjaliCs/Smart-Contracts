// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyValues {
    uint value;

// Setting and getting values

    function getValue() external view returns(uint){
        return value;
    }

    function setValue(uint _value) external {
        value = _value;
    }
}

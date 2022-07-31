// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Calling function of another contract

contract A {
    address addressB;
    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }

    function callHelloWorld() external view returns(string memory){
        B b = B(addressB);
        return b.helloWorld();
    }
}

contract B {
    function helloWorld() external pure returns (string memory){
        return 'HelloWorld';
    }
}

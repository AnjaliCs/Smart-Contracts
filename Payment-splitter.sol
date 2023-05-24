// SPDX-License-Identifier : MIT
pragma solidity^0.8.0;

contract Splitter {
    address payable [] public recipients;

    constructor(address payable [] memory _adr ) {
        for(uint i=0; i < recipients.length; i++) {
            recipients.push(_adr[i]);
        }
    }

    receive() payable external {
        uint256 share = msg.value/recipients.length;
        for(uint i=0; i < recipients.length; i++) {
            recipients[i].transfer(share);
        }
    }
}

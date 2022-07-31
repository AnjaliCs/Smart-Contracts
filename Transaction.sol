// SPDX-License-Identifier : UNLICENSED
pragma solidity^0.8.0;

contract Transaction {

    receive() external payable {}

    function withdraw() public {
        uint amt = address(this).balance;
        payable(msg.sender).transfer(amt);
    }
}

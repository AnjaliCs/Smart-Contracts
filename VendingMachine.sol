//SPDX-License-Identifier : MIT
pragma solidity^0.8.0;

contract vendingMachine {
    address public owner;
    uint256 stockPrice = 1000000000000000000;   // 1 ETH per stock
    mapping(address => uint256) stockBalance;

    constructor() {
        owner = msg.sender;
        stockBalance[address(this)] = 100;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can fill the stock");
        _;
    }

    function checkAvailableStock() public view returns(uint256) {
        uint256 _amt  = stockBalance[address(this)];
        return _amt;
    }

    function reStock(uint256 amount) public onlyOwner {
        stockBalance[address(this)] += amount;
    }

    function purchase(uint256 _amt) public payable {
        uint256 amtToPay = _amt*stockPrice;
        require(msg.value == amtToPay, "Put correct amount!");
        stockBalance[address(this)] -= _amt;
        stockBalance[msg.sender] += _amt;
    }

    function checkUserStock() public view returns(uint256) {
        uint256 _amt = stockBalance[msg.sender];
        return _amt;
    }

}

pragma solidity ^0.4.25;

contract myFood {
    mapping(string => uint) dishes;

    function addFood(string memory food, uint amount) public {
        dishes[food] = amount;
    }

    function getAmount(string memory food) public view returns(uint) {
        return dishes[food];
    }

    function removeFood(string memory food) public {
        delete(dishes[food]);
    }
}

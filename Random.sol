pragma solidity ^0.4.23;

contract RandomNum {

    function getRandomNumber(uint mod) external view returns(uint) {
        return uint(keccak256(abi.encodePacked(now, block.difficulty, msg.sender)));
    }
}

    

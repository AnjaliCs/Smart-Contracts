pragma solidity ^0.5.1;

contract TestingEvents {
    event DataChanged(uint oldData, uint newData);

    uint private count = 0;

    function increment() public {
        count += 1;
        emit DataChanged(count-1, count);
    }

    function decrement() public {
        count -= 1;
        emit DataChanged(count+1, count);
    }

    function getCount() public view returns(uint256) {
        return count;
    }
}

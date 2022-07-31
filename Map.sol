// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
      
    mapping (address => bool) public myMap;


    //this function sets a value to a specific address 
    function set(address _addr, bool _i) public {
        myMap[_addr] = _i;
    }
    
    //this function gets a value from a specific address from the map
    //If a value was not set the function will return the default value of 0.
    function get(address _addr) public view returns (bool) {
        return myMap[_addr];
    }

     //this function deletes a value from the map and sets it to the default value of 0
    function remove(address _addr) public {
    delete myMap[_addr];
    
    }

}

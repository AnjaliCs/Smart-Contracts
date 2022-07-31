// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract allowance {
    //mapping an address to another mapping.  This is a one to many relationship
    mapping(address => mapping(address => uint)) public allowance;
    
    
    //this function returns the allowance/amount that the owner permissioned to the spender 
    function get(address _addrOwner, address _addrSpender) public view returns (uint) {
        return  allowance[_addrOwner][_addrSpender];
    }
    
    
     //this function sets the amount of allowance the owner gives to the spender
    function set(address _addrOwner, address _addrSpender, uint _amt) public {
        allowance[_addrOwner][_addrSpender] = _amt;
    }
    
    //this function removes the spenders allowance
    function remove(address _addrOwner, address _addrSpender) public {
        delete allowance[_addrOwner][_addrSpender];
    }
}

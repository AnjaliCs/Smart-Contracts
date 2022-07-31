pragma solidity ^0.4.25;

contract myContract {
    mapping(string => string) relations;

    function addRelation(string name, string relation) public {
        relations[name] = relation;
    }

    function getRelation(string name) public view returns(string) {
        return relations[name];
    }

    function removeRelation(string name) public {
        delete(relations[name]);
    }
}

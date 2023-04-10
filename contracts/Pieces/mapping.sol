//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


//mapping(keytype => valuetype)
//key can be anything, value can only include mapping or array

contract Mapping{
//mapping from address to uint 

    //mapping is a state variable 
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns(uint){
        //mapping always returns a value, or worse a default value 
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
     //update the value at this address
    myMap[_addr] = _i;
    }

    function remove(address _addr) public{
        //reseting the value to the default 
        delete myMap[_addr];
    }
}

contract NestedMapping{
//mapping from address to another mapping 

    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns(bool){
        //can get values from a nested mapping 
        //even when its not initialized 
        return nested [_addr1][_i];
    }

    function set(address _addr1, uint _i, bool _bool) public {
        nested[_addr1][_i] = _bool;
    }

    function remove(address _addr1, uint _i) public{
        delete nested[_addr1][_i];
    }

}

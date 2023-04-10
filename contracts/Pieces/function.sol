//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract Function{
    //function that can return multiple values 

    function returnMany() public pure returns(
        uint, 
        bool,
        uint
    )
    {
        return (1, true, 2);
    }

    function returnValuesByName()
    public
    pure
    returns(
        uint x,
        bool b,
        uint y
    )
    {
        return (1, true, 2);
    }


    function returnValuesAssignedToNames()
    public
    pure
    returns(
        uint x,
        bool b,
        uint y
    )
    {
        x = 1;
        b = true;
        y = 2;
    }

    //using destructuring assignement when calling another fucntion returning multiple valuess
    function destructionAssignemtn()
    public
    pure
    returns(
        uint,
        bool,
        uint,
        uint,
        uint
    )
    {
        (uint i, bool b, uint j) = returnMany();  //deconstructing  to another function 
        //values can be left out
        (uint x, , uint y) = (4,5,6);
        return (i,b,j,x,y);
    }

    //cant use map as input or output

    //can use array for input 
    function arrayFunc(uint[] memory _arr) public {}

    //array as output 
    uint[] public arr;

    function arrayOutput() public view returns(uint[] memory){
        return arr;
    }

}

    //call function with key-value inputs
contract XYZ{

    function someFuncWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns(uint){}

    function callFunc() external pure returns(uint){
        return someFuncWithManyInputs(1,2,3, address(0), true, "c");
    }

    function funcWithKeyValue() external pure returns(uint){
        return 
        someFuncWithManyInputs({a:address(0), b:true, c:"c",x:1,y:2,z:3});   //can assign inputs as a key value pair 
    }
}
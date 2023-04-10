//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;


//2types: compile time fixed size and dynamic syzed arrays

contract Array{
   //how to initialize arrats
     uint[] public arr;
    //  uint[] public arr2 = [1,2,3,4];
    //  uint[10] public arr3; //fixed size array

    //returning by index
    function get(uint i) public view returns(uint){
        return arr[i];
    }

    //this is how to return the entire
    function getArr() public view returns (uint[] memory){
        return arr; 
    }

    //append to array, each time by one
    function push (uint i) public {
        arr.push(i);
    }

    //to remove the last entry to an array
    function pop() public{
        arr.pop();
    }

    function getLen() public view returns (uint){
        return arr.length;
    }

    //will set the value of the lenght to 0
    function remove(uint index) public {
        delete arr[index];
    }
    
    //to create a fixed size array in memory
    function examples() external{
        uint[] memory a = new uint[](5);
    }

}

contract ArrayRemovedByShifting{
   //outcome of this practice:  [1,2,3] : remove(1) --> [1,3,3] --> [1,3]


   uint[] public arr;

   function remove (uint _index) public{
       require(_index < arr.length, "Index out of bound");

       for (uint i = _index; i < arr.length - 1; i++){
           arr[i] = arr[i + 1];
       }

       arr.pop();
   }

   function test() external{
       arr = [1,2,3,4,5];
       remove(2); //[1,2,4,5]
    
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4); //if this is true remove one element

        arr = [1];
        remove(0); //[] //removing the first array

        assert(arr.length == 0);
        
   }
}

contract ArrayReplaceFromEnd{
    uint[] public arr;

    //deleting an element creates a gap in the array
    //so move that last element in to the place and delete

    function remove(uint index) public{
        arr[index] = arr[arr.length - 1]; //gives the last element
        arr.pop(); //removing the last emlement
    }


    function test() public{
        arr=[1,2,3,4];
        remove(1); //[1,4,3]

        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2); //removing the last one //[1,4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        

        
        
    }



}
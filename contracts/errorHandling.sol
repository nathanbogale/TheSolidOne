//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;



//REQUIRED is one keyword used ot handle errors 
//has condition and message to it
contract Required{

    function checkerNormal(uint _input) public view returns(string memory){
        require(_input >= 0, "Invalid Number BRO!");
        require(_input <= 255, "Again, Invalid Number");
        return "Number is NORMAL.";
    }

    function checkODD(uint _input) public view returns(bool){
        require(_input % 2 != 0);
        return true;
    }

}

//ASSERT
//only has condition, no message
contract Assert{
    
    bool result;

    function overflowChecker(uint _one, uint _two) public returns(bool){
        uint sum = _one + _two;
        assert(sum <= 255);
        result = true;
    }

    function getResult() public view returns(string memory){
         if (result == true) {
             return "Clean of Overflow";
          }else{
              return "OVERFLOW existed";
          } 
    }


}


//REVERT
//doesnt check conditions, only message 
contract Revert{

    function overflowChecker(uint _one, uint _two) public view returns(string memory, uint){
        uint sum = _one + _two;

        if(sum < 0 || sum > 255){
            revert("Overflow detected!");
        }else{
            return ("No Overflow", sum);
        }
    }
}
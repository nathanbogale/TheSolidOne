//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

//this contract counts the number of NFTs
contract NFTCounter{

    uint256 public numberOfNFT;

    //this func will increment the NFT number
    function addNFT() public {
        numberOfNFT += 1;
    }

    //this func will delete the NFT one by one
    function removeNFT() public {
        numberOfNFT -= 1;
    }

    //to see the number of NFTs
    function showNFT() public view returns(uint256){ //view used here to show value of state variable 
       return numberOfNFT;
    }
}
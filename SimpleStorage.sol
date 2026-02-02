// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // start our  solidity version

contract SimpleStorage {
      //  favoriteNumber gets initialized to 0if no value is g

      uint256 favoriteNumber; //0

      uint256[] listofFavoriteNumbers; 
      
     // uint256[] listofFavoriteNumbers;
     // 0. 1. 2.
     // [77, 78, 90]
       struct Person{
        uint256 favoriteNumber;
         string name;
       }
    //dynamic array
     Person[] public listOfPeople; //[]
     
     // Yaw -> 5
    mapping(string => uint256) public nameToFavoriteNumber;

      function store(uint256 _favoriteNumber) public {
    favoriteNumber = _favoriteNumber;
      
      }

      // view, pure
 function retrieve() public view returns(uint256){
    return favoriteNumber;
 }

 // calldata, memory, storage
      function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push( Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
      }
}
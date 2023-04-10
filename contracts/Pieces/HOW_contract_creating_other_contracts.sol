//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

// 

contract Car{
  address public owner;
  string public model;
  address public carAddr;

  constructor(address _owner, string memory _model) payable {
      owner = _owner;
      model = _model;
      carAddr = address(this); // telling to use the contract's address - address(this) means the contract address itself

  }
}


contract CarFactory{
  Car[] public cars;

  function create (address _owner, string memory _model) public {
    Car car = new Car(_owner, _model);  //this new keyword allows the creation of new contract from this one
    cars.push(car);
  }

  function createAndSEndETH(address _owner, string memory _model) public payable{
    Car car = (new Car){value:msg.value}(_owner, _model);
    cars.push(car);
  }

  function create2(address _owner, string memory _model, bytes32 _salt) public {
        Car car = (new Car){salt: _salt}(_owner, _model);
        cars.push(car);
  }

  function create2AndSendETH(address _owner, string memory _model, bytes32 _salt) public payable{
    Car car = (new Car){value:msg.value, salt:_salt}(_owner, _model);
    cars.push(car);
  }

  function getCar(uint _index) public view returns(address owner, string memory model, address carAddr, uint balance){
    Car car = cars[_index];
    return(car.owner(), car.model(), car.carAddr(), address(car).balance);
  }
}
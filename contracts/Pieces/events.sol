//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

//events can be used for data storage
//cost cheaper than state vaiables wo sore on BC

//events emited from functions are logged into the transaction log

contract Event{
    //in event declaraion
    //only up to 3 parameters can be indexed
    //help in filtering the logs with the indexed parameter

  event log(address indexed sender, string message);
  event anotherLog();

  function test() public{
    emit log(msg.sender, "Ola World");
    emit log(msg.sender, "Salut World");
    emit anotherLog();
  }

}


contract A{


  event Log(string message);

  function foo() public virtual{
    emit Log(" A FOO is called");
  }  
  function bar() public virtual{
    emit Log(" A BAR is called");
  }

  
}


//supper is a way to call and inheerit from the parent contract

contract B is A{
  function foo() public override virtual{
    emit Log(" B FOO is called");
    A.foo();
  }  
  function bar() public override virtual{
    emit Log(" B BAR is called");
    super.bar();
  }
}

contract C is A{
  function foo() public override virtual{
    emit Log(" C FOO is called");
    A.foo();
  }  
  function bar() public override virtual{
    emit Log(" C BAR is called");
    super.bar();
  }
}

contract D is B,C{
  function foo() public override(B,C) virtual{
    super.foo();
  }  
  function bar() public override(B,C) virtual{
    super.bar();
  }
}
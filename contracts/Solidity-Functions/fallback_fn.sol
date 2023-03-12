//SPDX-License-Identifier:UNLICENSED

pragma solidity ^0.8.17;

contract Test{
    uint public x;
    fallback() external{ x=1;}
}

contract Sink{
    fallback() external payable{}
}

contract Caller{
    function callTest(Test test) public returns (bool){
        (bool success,)=address(test).call(abi.encodeWithSignature("nonExistingFunction()"));
        require(success);
        //test.x is 1

      address payable testPayable =payable( address(uint160(address(test))));

      //Sending ether to Test contract
      //the transfer will fail 
      return (testPayable.send(2 ether));

    }

    function callSink(Sink sink) public returns (bool){
        address payable sinkPayable=payable(address(sink));
        return (sinkPayable.send(2 ether));
    }
}
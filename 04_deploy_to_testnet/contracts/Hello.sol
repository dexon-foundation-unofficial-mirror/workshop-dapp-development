pragma solidity ^0.5.1;

contract Hello {
    uint256 public value;

    event UpdateNumber(uint256 _value);
    event receivedFund(uint256 value, address sender);

    function update() public {
        value += 1;
        emit UpdateNumber(value);
    }

    function get() public view returns (uint256) {
        return value;
    }

    function funding() public payable {
        emit receivedFund(msg.value, msg.sender);
    }
}
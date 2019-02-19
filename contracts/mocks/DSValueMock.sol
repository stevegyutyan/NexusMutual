pragma solidity ^0.4.24;


contract DSValueMock {

    function peek() public pure returns (bytes32, bool) {
        return (0x000000000000000000000000000000000000000000000008696a94dfc55d0000, true);
    }
    bytes32 p;
    constructor () {
        p = bytes32 (120000000000000000000);
    }
    function read() public view returns (bytes32) {
        return p;
        
    }
    function setRate(uint value) public {
        p = bytes32 (value);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {
   
    uint public num = 0;
    uint public divisor = 0;

    function setNum(uint _num) public {
        require(_num != 0, "Number must not be zero");
        num = _num;
    }

    function setDivisor(uint _divisor) public {
        assert(_divisor != 0);
        divisor = _divisor;
    }

    function divide() public view returns (uint) {
        require(divisor != 0, "Divisor must not be zero");
        return num/divisor;
    }

    function triggerRevert() public pure {
        revert("This transaction intentionally reverted");
    }
}

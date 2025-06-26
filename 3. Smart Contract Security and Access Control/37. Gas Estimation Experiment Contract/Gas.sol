// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasExperiment {
    uint public x = 1;
    uint[] public arr;

    // Cheap: Read-only function
    function readX() public view returns (uint) {//2497 gas
        return x;
    }

    // Costly: Writing to storage
    function writeX(uint _x) public {//22514 gas
        x = _x;
    }

    // Very costly: Writing to array (grows storage)
    function pushToArray(uint _val) public {//46866 gas
        arr.push(_val);
    }

    // Costly: Looping (linear cost)
    function loopWrite(uint n) public {//infinite
        for (uint i = 0; i < n; i++) {
            arr.push(i);
        }
    }

    // Medium: Emit event
    event Logged(uint val);

    function logEvent(uint _val) public {//inifinite
        emit Logged(_val);
    }
}

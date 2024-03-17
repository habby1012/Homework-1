// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    bool private _isCalled = false;

    function register() external returns (uint256) {
        if (!_isCalled) {
            _isCalled = true;
            return 1234;
        } else {
            return 123;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        if (IClassroomV2(msg.sender).isEnrolled()) {
            return 123;
        } else {
            return 1234;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        uint256 gasThreshold = 7000;
        if (gasleft() <= gasThreshold) {
            return 123;
        } else {
            return 1234;
        }
    }
}

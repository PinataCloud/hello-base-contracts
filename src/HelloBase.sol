// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

contract HelloBase {
    // State variable to store our string
    string private greeting;

    // Function to store a string
    function setGreeting(string memory _newGreeting) public {
        greeting = _newGreeting;
    }

    // Function to retrieve the stored string
    function getGreeting() public view returns (string memory) {
        return greeting;
    }
}

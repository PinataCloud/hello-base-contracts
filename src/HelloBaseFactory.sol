// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "../lib/openzeppelin-contracts/contracts/proxy/Clones.sol";
import "./HelloBase.sol";

contract HelloBaseFactory {
    // Address of the implementation contract
    address public immutable implementation;

    // Event to emit when a new clone is created
    event HelloBaseCreated(address cloneAddress);

    constructor() {
        // Deploy the implementation contract
        implementation = address(new HelloBase());
    }

    function createHelloBase() external returns (address) {
        address clone = Clones.clone(implementation);

        emit HelloBaseCreated(clone);

        return clone;
    }

    // Optional: deterministic clone using create2
    // function createDeterministicHelloBase(
    //     bytes32 salt
    // ) external returns (address) {
    //     address clone = Clones.cloneDeterministic(implementation, salt);

    //     emit HelloBaseCreated(clone);

    //     return clone;
    // }

    // Function to predict the address of a deterministic clone
    // function predictDeterministicAddress(
    //     bytes32 salt
    // ) external view returns (address) {
    //     return
    //         Clones.predictDeterministicAddress(
    //             implementation,
    //             salt,
    //             address(this)
    //         );
    // }
}

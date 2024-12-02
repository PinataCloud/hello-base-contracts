// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script, console} from "forge-std/Script.sol";
import {HelloBaseFactory} from "../src/HelloBaseFactory.sol";
import {HelloBase} from "../src/HelloBase.sol";

contract HelloBaseFactoryScript is Script {
    HelloBaseFactory public factory;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        // Deploy the factory
        factory = new HelloBaseFactory();
        console.log("Factory deployed at:", address(factory));

        vm.stopBroadcast();
    }
}

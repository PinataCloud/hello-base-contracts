// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {HelloBase} from "../src/HelloBase.sol";

contract HelloBaseScript is Script {
    HelloBase public helloBase;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        helloBase = new HelloBase();

        vm.stopBroadcast();
    }
}

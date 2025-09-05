// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Vm} from "forge-std/Vm.sol";
import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import { PoolManagerListener } from "../src/PoolManagerListener.sol";

// In this file you can implement unit tests for your listeners.
// contract PoolManagerListenerTest is Test {
//     PoolManagerListener public listener;

//     function setUp() public {
//         listener = new PoolManagerListener();
//         vm.recordLogs();
//     }
// }
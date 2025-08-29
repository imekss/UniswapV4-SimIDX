// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./PoolManagerListener.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        PoolManagerListener listener = new PoolManagerListener();
        addTrigger(
            chainContract(Chains.Ethereum, 0x000000000004444c5dc75cB358380D2e3dE08A90),
            listener.triggerOnInitializeFunction()
        );
        addTrigger(
            chainContract(Chains.Unichain, 0x1F98400000000000000000000000000000000004),
            listener.triggerOnInitializeFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x498581fF718922c3f8e6A244956aF099B2652b2b),
            listener.triggerOnInitializeFunction()
        );
    }
}
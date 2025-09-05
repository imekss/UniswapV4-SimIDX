// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./PoolManagerListener.sol";
import "./Constants.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        PoolManagerListener listener = new PoolManagerListener();
        addTrigger(chainContract(Chains.Ethereum, POOLMANAGER_ETHEREUM),listener.triggerOnInitializeEvent());
        // addTrigger(chainContract(Chains.Ethereum, POOLMANAGER_ETHEREUM),listener.triggerOnSwapEvent());
        addTrigger(chainContract(Chains.Unichain, POOLMANAGER_UNICHAIN),listener.triggerOnInitializeEvent());
        // addTrigger(chainContract(Chains.Unichain, POOLMANAGER_UNICHAIN),listener.triggerOnSwapEvent());
        // addTrigger(chainContract(Chains.Base, POOLMANAGER_BASE), listener.triggerOnInitializeEvent());
    }
}
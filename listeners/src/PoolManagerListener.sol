// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";

contract PoolManagerListener is PoolManager$OnInitializeFunction {
    event PoolInitialized(
        uint64 chainId,
        address caller,
        address currency0,
        address currency1,
        uint24 fee,
        int24 tickSpacing,
        address hooks,
        uint160 sqrtPriceX96,
        int24 tick
    );

    function onInitializeFunction(
        FunctionContext memory ctx,
        PoolManager$InitializeFunctionInputs memory inputs,
        PoolManager$InitializeFunctionOutputs memory outputs
    ) external override {
        emit PoolInitialized(
            uint64(block.chainid),
            ctx.txn.call.callee(),        
            inputs.key.currency0,
            inputs.key.currency1,
            inputs.key.fee,
            inputs.key.tickSpacing,
            inputs.key.hooks,
            inputs.sqrtPriceX96,
            outputs.tick
        );
    }
}
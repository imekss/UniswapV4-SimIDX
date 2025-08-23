// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";

/// Index calls to the UniswapV3Factory.createPool function on Ethereum
/// To hook on more function calls, specify that this listener should implement that interface and follow the compiler errors.
contract UniswapV3FactoryListener is UniswapV3Factory$OnCreatePoolFunction {
    /// Emitted events are indexed.
    /// To change the data which is indexed, modify the event or add more events.
    event PoolCreated(uint64 chainId, address caller, address pool, address token0, address token1, uint24 fee);

    /// The handler called whenever the UniswapV3Factory.createPool function is called.
    /// Within here you write your indexing specific logic (e.g., call out to other contracts to get more information).
    /// The only requirement for handlers is that they have the correct signature, but usually you will use generated interfaces to help write them.
    function onCreatePoolFunction(
        FunctionContext memory ctx,
        UniswapV3Factory$CreatePoolFunctionInputs memory inputs,
        UniswapV3Factory$CreatePoolFunctionOutputs memory outputs
    ) external override {
        emit PoolCreated(
            uint64(block.chainid), ctx.txn.call.callee(), outputs.pool, inputs.tokenA, inputs.tokenB, inputs.fee
        );
    }
}

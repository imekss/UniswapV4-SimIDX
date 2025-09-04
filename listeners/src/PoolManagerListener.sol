// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";


contract PoolManagerListener is PoolManager$OnInitializeEvent, PoolManager$OnSwapEvent {
    event PoolInitialized(
        uint64 chainId,
        bytes32 txnHash,
        uint256 blockNumber,
        uint256 blockTimestamp, 
        bytes32 id,
        address currency0,
        address currency1,
        uint24 fee,
        int24 tickSpacing,
        address hooks,
        uint160 sqrtPriceX96,
        int24 tick
  
    );

    event PoolSwap(
        uint64 chainId,
        bytes32 txnHash,
        uint256 blockNumber,
        uint256 blockTimestamp,
        bytes32 id,
        address sender,
        int128 amount0,
        int128 amount1,
        uint160 sqrtPriceX96,
        uint128 liquidity,
        int24 tick,
        uint24 fee
    );


    function onInitializeEvent(
        EventContext memory ctx,
        PoolManager$InitializeEventParams memory inputs
    ) external override {
        emit PoolInitialized(
            uint64(block.chainid),
            ctx.txn.hash(),
            block.number,
            block.timestamp,
            inputs.id,
            inputs.currency0,
            inputs.currency1,
            inputs.fee,
            inputs.tickSpacing,
            inputs.hooks,
            inputs.sqrtPriceX96,
            inputs.tick
        );
    }

    function onSwapEvent(
        EventContext memory ctx,
        PoolManager$SwapEventParams memory inputs
    ) external override {
        emit PoolSwap(
            uint64(block.chainid),
            ctx.txn.hash(),
            block.number,
            block.timestamp,
            inputs.id,
            inputs.sender,
            inputs.amount0,
            inputs.amount1,
            inputs.sqrtPriceX96,
            inputs.liquidity,
            inputs.tick,
            inputs.fee

        );
    }
}
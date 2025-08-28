// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function PoolManager$Abi() pure returns (Abi memory) {
    return Abi("PoolManager");
}
struct PoolManager$AllowanceFunctionInputs {
    address owner;
    address spender;
    uint256 id;
}

struct PoolManager$AllowanceFunctionOutputs {
    uint256 amount;
}

struct PoolManager$ApproveFunctionInputs {
    address spender;
    uint256 id;
    uint256 amount;
}

struct PoolManager$ApproveFunctionOutputs {
    bool outArg0;
}

struct PoolManager$BalanceOfFunctionInputs {
    address owner;
    uint256 id;
}

struct PoolManager$BalanceOfFunctionOutputs {
    uint256 balance;
}

struct PoolManager$BurnFunctionInputs {
    address from;
    uint256 id;
    uint256 amount;
}

struct PoolManager$ClearFunctionInputs {
    address currency;
    uint256 amount;
}

struct PoolManager$CollectProtocolFeesFunctionInputs {
    address recipient;
    address currency;
    uint256 amount;
}

struct PoolManager$CollectProtocolFeesFunctionOutputs {
    uint256 amountCollected;
}

struct PoolManager$PoolKey {
    address currency0;
    address currency1;
    uint24 fee;
    int24 tickSpacing;
    address hooks;
}

struct PoolManager$DonateFunctionInputs {
    PoolManager$PoolKey key;
    uint256 amount0;
    uint256 amount1;
    bytes hookData;
}

struct PoolManager$DonateFunctionOutputs {
    int256 delta;
}

struct PoolManager$Extsload0x1E2EAEAFFunctionInputs {
    bytes32 slot;
}

struct PoolManager$Extsload0x1E2EAEAFFunctionOutputs {
    bytes32 outArg0;
}

struct PoolManager$Extsload0x35FD631AFunctionInputs {
    bytes32 startSlot;
    uint256 nSlots;
}

struct PoolManager$Extsload0x35FD631AFunctionOutputs {
    bytes32[] outArg0;
}

struct PoolManager$Extsload0xDBD035FFFunctionInputs {
    bytes32[] slots;
}

struct PoolManager$Extsload0xDBD035FFFunctionOutputs {
    bytes32[] outArg0;
}

struct PoolManager$Exttload0x9BF6645FFunctionInputs {
    bytes32[] slots;
}

struct PoolManager$Exttload0x9BF6645FFunctionOutputs {
    bytes32[] outArg0;
}

struct PoolManager$Exttload0xF135BAAAFunctionInputs {
    bytes32 slot;
}

struct PoolManager$Exttload0xF135BAAAFunctionOutputs {
    bytes32 outArg0;
}

struct PoolManager$InitializeFunctionInputs {
    PoolManager$PoolKey key;
    uint160 sqrtPriceX96;
}

struct PoolManager$InitializeFunctionOutputs {
    int24 tick;
}

struct PoolManager$IsOperatorFunctionInputs {
    address owner;
    address operator;
}

struct PoolManager$IsOperatorFunctionOutputs {
    bool isOperator;
}

struct PoolManager$MintFunctionInputs {
    address to;
    uint256 id;
    uint256 amount;
}

struct PoolManager$IPoolManager$ModifyLiquidityParams {
    int24 tickLower;
    int24 tickUpper;
    int256 liquidityDelta;
    bytes32 salt;
}

struct PoolManager$ModifyLiquidityFunctionInputs {
    PoolManager$PoolKey key;
    PoolManager$IPoolManager$ModifyLiquidityParams params;
    bytes hookData;
}

struct PoolManager$ModifyLiquidityFunctionOutputs {
    int256 callerDelta;
    int256 feesAccrued;
}

struct PoolManager$OwnerFunctionOutputs {
    address outArg0;
}

struct PoolManager$ProtocolFeeControllerFunctionOutputs {
    address outArg0;
}

struct PoolManager$ProtocolFeesAccruedFunctionInputs {
    address currency;
}

struct PoolManager$ProtocolFeesAccruedFunctionOutputs {
    uint256 amount;
}

struct PoolManager$SetOperatorFunctionInputs {
    address operator;
    bool approved;
}

struct PoolManager$SetOperatorFunctionOutputs {
    bool outArg0;
}

struct PoolManager$SetProtocolFeeFunctionInputs {
    PoolManager$PoolKey key;
    uint24 newProtocolFee;
}

struct PoolManager$SetProtocolFeeControllerFunctionInputs {
    address controller;
}

struct PoolManager$SettleFunctionOutputs {
    uint256 outArg0;
}

struct PoolManager$SettleForFunctionInputs {
    address recipient;
}

struct PoolManager$SettleForFunctionOutputs {
    uint256 outArg0;
}

struct PoolManager$SupportsInterfaceFunctionInputs {
    bytes4 interfaceId;
}

struct PoolManager$SupportsInterfaceFunctionOutputs {
    bool outArg0;
}

struct PoolManager$IPoolManager$SwapParams {
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
}

struct PoolManager$SwapFunctionInputs {
    PoolManager$PoolKey key;
    PoolManager$IPoolManager$SwapParams params;
    bytes hookData;
}

struct PoolManager$SwapFunctionOutputs {
    int256 swapDelta;
}

struct PoolManager$SyncFunctionInputs {
    address currency;
}

struct PoolManager$TakeFunctionInputs {
    address currency;
    address to;
    uint256 amount;
}

struct PoolManager$TransferFunctionInputs {
    address receiver;
    uint256 id;
    uint256 amount;
}

struct PoolManager$TransferFunctionOutputs {
    bool outArg0;
}

struct PoolManager$TransferFromFunctionInputs {
    address sender;
    address receiver;
    uint256 id;
    uint256 amount;
}

struct PoolManager$TransferFromFunctionOutputs {
    bool outArg0;
}

struct PoolManager$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct PoolManager$UnlockFunctionInputs {
    bytes data;
}

struct PoolManager$UnlockFunctionOutputs {
    bytes result;
}

struct PoolManager$UpdateDynamicLpFeeFunctionInputs {
    PoolManager$PoolKey key;
    uint24 newDynamicLPFee;
}

struct PoolManager$ApprovalEventParams {
    address owner;
    address spender;
    uint256 id;
    uint256 amount;
}

struct PoolManager$DonateEventParams {
    bytes32 id;
    address sender;
    uint256 amount0;
    uint256 amount1;
}

struct PoolManager$InitializeEventParams {
    bytes32 id;
    address currency0;
    address currency1;
    uint24 fee;
    int24 tickSpacing;
    address hooks;
    uint160 sqrtPriceX96;
    int24 tick;
}

struct PoolManager$ModifyLiquidityEventParams {
    bytes32 id;
    address sender;
    int24 tickLower;
    int24 tickUpper;
    int256 liquidityDelta;
    bytes32 salt;
}

struct PoolManager$OperatorSetEventParams {
    address owner;
    address operator;
    bool approved;
}

struct PoolManager$OwnershipTransferredEventParams {
    address user;
    address newOwner;
}

struct PoolManager$ProtocolFeeControllerUpdatedEventParams {
    address protocolFeeController;
}

struct PoolManager$ProtocolFeeUpdatedEventParams {
    bytes32 id;
    uint24 protocolFee;
}

struct PoolManager$SwapEventParams {
    bytes32 id;
    address sender;
    int128 amount0;
    int128 amount1;
    uint160 sqrtPriceX96;
    uint128 liquidity;
    int24 tick;
    uint24 fee;
}

struct PoolManager$TransferEventParams {
    address caller;
    address from;
    address to;
    uint256 id;
    uint256 amount;
}

abstract contract PoolManager$OnApprovalEvent {
    function onApprovalEvent(EventContext memory ctx, PoolManager$ApprovalEventParams memory inputs) virtual external;

    function triggerOnApprovalEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xb3fd5071835887567a0671151121894ddccc2842f1d10bedad13e0d17cace9a7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApprovalEvent.selector
        });
    }
}

abstract contract PoolManager$OnDonateEvent {
    function onDonateEvent(EventContext memory ctx, PoolManager$DonateEventParams memory inputs) virtual external;

    function triggerOnDonateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0x29ef05caaff9404b7cb6d1c0e9bbae9eaa7ab2541feba1a9c4248594c08156cb),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDonateEvent.selector
        });
    }
}

abstract contract PoolManager$OnInitializeEvent {
    function onInitializeEvent(EventContext memory ctx, PoolManager$InitializeEventParams memory inputs) virtual external;

    function triggerOnInitializeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xdd466e674ea557f56295e2d0218a125ea4b4f0f6f3307b95f85e6110838d6438),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeEvent.selector
        });
    }
}

abstract contract PoolManager$OnModifyLiquidityEvent {
    function onModifyLiquidityEvent(EventContext memory ctx, PoolManager$ModifyLiquidityEventParams memory inputs) virtual external;

    function triggerOnModifyLiquidityEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xf208f4912782fd25c7f114ca3723a2d5dd6f3bcc3ac8db5af63baa85f711d5ec),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModifyLiquidityEvent.selector
        });
    }
}

abstract contract PoolManager$OnOperatorSetEvent {
    function onOperatorSetEvent(EventContext memory ctx, PoolManager$OperatorSetEventParams memory inputs) virtual external;

    function triggerOnOperatorSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xceb576d9f15e4e200fdb5096d64d5dfd667e16def20c1eefd14256d8e3faa267),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOperatorSetEvent.selector
        });
    }
}

abstract contract PoolManager$OnOwnershipTransferredEvent {
    function onOwnershipTransferredEvent(EventContext memory ctx, PoolManager$OwnershipTransferredEventParams memory inputs) virtual external;

    function triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract PoolManager$OnProtocolFeeControllerUpdatedEvent {
    function onProtocolFeeControllerUpdatedEvent(EventContext memory ctx, PoolManager$ProtocolFeeControllerUpdatedEventParams memory inputs) virtual external;

    function triggerOnProtocolFeeControllerUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xb4bd8ef53df690b9943d3318996006dbb82a25f54719d8c8035b516a2a5b8acc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeeControllerUpdatedEvent.selector
        });
    }
}

abstract contract PoolManager$OnProtocolFeeUpdatedEvent {
    function onProtocolFeeUpdatedEvent(EventContext memory ctx, PoolManager$ProtocolFeeUpdatedEventParams memory inputs) virtual external;

    function triggerOnProtocolFeeUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xe9c42593e71f84403b84352cd168d693e2c9fcd1fdbcc3feb21d92b43e6696f9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeeUpdatedEvent.selector
        });
    }
}

abstract contract PoolManager$OnSwapEvent {
    function onSwapEvent(EventContext memory ctx, PoolManager$SwapEventParams memory inputs) virtual external;

    function triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0x40e9cecb9f5f1f1c5b9c97dec2917b7ee92e57ba5563708daca94dd84ad7112f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSwapEvent.selector
        });
    }
}

abstract contract PoolManager$OnTransferEvent {
    function onTransferEvent(EventContext memory ctx, PoolManager$TransferEventParams memory inputs) virtual external;

    function triggerOnTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0x1b3d7edb2e9c0b0e7c525b20aaaef0f5940d2ed71663c7d39266ecafac728859),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferEvent.selector
        });
    }
}

abstract contract PoolManager$OnAllowanceFunction {
    function onAllowanceFunction(FunctionContext memory ctx, PoolManager$AllowanceFunctionInputs memory inputs, PoolManager$AllowanceFunctionOutputs memory outputs) virtual external;

    function triggerOnAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x598af9e7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAllowanceFunction.selector
        });
    }
}

abstract contract PoolManager$PreAllowanceFunction {
    function preAllowanceFunction(PreFunctionContext memory ctx, PoolManager$AllowanceFunctionInputs memory inputs) virtual external;

    function triggerPreAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x598af9e7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAllowanceFunction.selector
        });
    }
}

abstract contract PoolManager$OnApproveFunction {
    function onApproveFunction(FunctionContext memory ctx, PoolManager$ApproveFunctionInputs memory inputs, PoolManager$ApproveFunctionOutputs memory outputs) virtual external;

    function triggerOnApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x426a8493),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onApproveFunction.selector
        });
    }
}

abstract contract PoolManager$PreApproveFunction {
    function preApproveFunction(PreFunctionContext memory ctx, PoolManager$ApproveFunctionInputs memory inputs) virtual external;

    function triggerPreApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x426a8493),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preApproveFunction.selector
        });
    }
}

abstract contract PoolManager$OnBalanceOfFunction {
    function onBalanceOfFunction(FunctionContext memory ctx, PoolManager$BalanceOfFunctionInputs memory inputs, PoolManager$BalanceOfFunctionOutputs memory outputs) virtual external;

    function triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x00fdd58e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBalanceOfFunction.selector
        });
    }
}

abstract contract PoolManager$PreBalanceOfFunction {
    function preBalanceOfFunction(PreFunctionContext memory ctx, PoolManager$BalanceOfFunctionInputs memory inputs) virtual external;

    function triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x00fdd58e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBalanceOfFunction.selector
        });
    }
}

abstract contract PoolManager$OnBurnFunction {
    function onBurnFunction(FunctionContext memory ctx, PoolManager$BurnFunctionInputs memory inputs) virtual external;

    function triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf5298aca),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBurnFunction.selector
        });
    }
}

abstract contract PoolManager$PreBurnFunction {
    function preBurnFunction(PreFunctionContext memory ctx, PoolManager$BurnFunctionInputs memory inputs) virtual external;

    function triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf5298aca),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBurnFunction.selector
        });
    }
}

abstract contract PoolManager$OnClearFunction {
    function onClearFunction(FunctionContext memory ctx, PoolManager$ClearFunctionInputs memory inputs) virtual external;

    function triggerOnClearFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x80f0b44c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onClearFunction.selector
        });
    }
}

abstract contract PoolManager$PreClearFunction {
    function preClearFunction(PreFunctionContext memory ctx, PoolManager$ClearFunctionInputs memory inputs) virtual external;

    function triggerPreClearFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x80f0b44c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preClearFunction.selector
        });
    }
}

abstract contract PoolManager$OnCollectProtocolFeesFunction {
    function onCollectProtocolFeesFunction(FunctionContext memory ctx, PoolManager$CollectProtocolFeesFunctionInputs memory inputs, PoolManager$CollectProtocolFeesFunctionOutputs memory outputs) virtual external;

    function triggerOnCollectProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x8161b874),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCollectProtocolFeesFunction.selector
        });
    }
}

abstract contract PoolManager$PreCollectProtocolFeesFunction {
    function preCollectProtocolFeesFunction(PreFunctionContext memory ctx, PoolManager$CollectProtocolFeesFunctionInputs memory inputs) virtual external;

    function triggerPreCollectProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x8161b874),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCollectProtocolFeesFunction.selector
        });
    }
}

abstract contract PoolManager$OnDonateFunction {
    function onDonateFunction(FunctionContext memory ctx, PoolManager$DonateFunctionInputs memory inputs, PoolManager$DonateFunctionOutputs memory outputs) virtual external;

    function triggerOnDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x234266d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDonateFunction.selector
        });
    }
}

abstract contract PoolManager$PreDonateFunction {
    function preDonateFunction(PreFunctionContext memory ctx, PoolManager$DonateFunctionInputs memory inputs) virtual external;

    function triggerPreDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x234266d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDonateFunction.selector
        });
    }
}

abstract contract PoolManager$OnExtsload0x1E2EAEAFFunction {
    function onExtsload0x1E2EAEAFFunction(FunctionContext memory ctx, PoolManager$Extsload0x1E2EAEAFFunctionInputs memory inputs, PoolManager$Extsload0x1E2EAEAFFunctionOutputs memory outputs) virtual external;

    function triggerOnExtsload0x1E2EAEAFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x1e2eaeaf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onExtsload0x1E2EAEAFFunction.selector
        });
    }
}

abstract contract PoolManager$PreExtsload0x1E2EAEAFFunction {
    function preExtsload0x1E2EAEAFFunction(PreFunctionContext memory ctx, PoolManager$Extsload0x1E2EAEAFFunctionInputs memory inputs) virtual external;

    function triggerPreExtsload0x1E2EAEAFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x1e2eaeaf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preExtsload0x1E2EAEAFFunction.selector
        });
    }
}

abstract contract PoolManager$OnExtsload0x35FD631AFunction {
    function onExtsload0x35FD631AFunction(FunctionContext memory ctx, PoolManager$Extsload0x35FD631AFunctionInputs memory inputs, PoolManager$Extsload0x35FD631AFunctionOutputs memory outputs) virtual external;

    function triggerOnExtsload0x35FD631AFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x35fd631a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onExtsload0x35FD631AFunction.selector
        });
    }
}

abstract contract PoolManager$PreExtsload0x35FD631AFunction {
    function preExtsload0x35FD631AFunction(PreFunctionContext memory ctx, PoolManager$Extsload0x35FD631AFunctionInputs memory inputs) virtual external;

    function triggerPreExtsload0x35FD631AFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x35fd631a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preExtsload0x35FD631AFunction.selector
        });
    }
}

abstract contract PoolManager$OnExtsload0xDBD035FFFunction {
    function onExtsload0xDBD035FFFunction(FunctionContext memory ctx, PoolManager$Extsload0xDBD035FFFunctionInputs memory inputs, PoolManager$Extsload0xDBD035FFFunctionOutputs memory outputs) virtual external;

    function triggerOnExtsload0xDBD035FFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xdbd035ff),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onExtsload0xDBD035FFFunction.selector
        });
    }
}

abstract contract PoolManager$PreExtsload0xDBD035FFFunction {
    function preExtsload0xDBD035FFFunction(PreFunctionContext memory ctx, PoolManager$Extsload0xDBD035FFFunctionInputs memory inputs) virtual external;

    function triggerPreExtsload0xDBD035FFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xdbd035ff),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preExtsload0xDBD035FFFunction.selector
        });
    }
}

abstract contract PoolManager$OnExttload0x9BF6645FFunction {
    function onExttload0x9BF6645FFunction(FunctionContext memory ctx, PoolManager$Exttload0x9BF6645FFunctionInputs memory inputs, PoolManager$Exttload0x9BF6645FFunctionOutputs memory outputs) virtual external;

    function triggerOnExttload0x9BF6645FFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x9bf6645f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onExttload0x9BF6645FFunction.selector
        });
    }
}

abstract contract PoolManager$PreExttload0x9BF6645FFunction {
    function preExttload0x9BF6645FFunction(PreFunctionContext memory ctx, PoolManager$Exttload0x9BF6645FFunctionInputs memory inputs) virtual external;

    function triggerPreExttload0x9BF6645FFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x9bf6645f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preExttload0x9BF6645FFunction.selector
        });
    }
}

abstract contract PoolManager$OnExttload0xF135BAAAFunction {
    function onExttload0xF135BAAAFunction(FunctionContext memory ctx, PoolManager$Exttload0xF135BAAAFunctionInputs memory inputs, PoolManager$Exttload0xF135BAAAFunctionOutputs memory outputs) virtual external;

    function triggerOnExttload0xF135BAAAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf135baaa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onExttload0xF135BAAAFunction.selector
        });
    }
}

abstract contract PoolManager$PreExttload0xF135BAAAFunction {
    function preExttload0xF135BAAAFunction(PreFunctionContext memory ctx, PoolManager$Exttload0xF135BAAAFunctionInputs memory inputs) virtual external;

    function triggerPreExttload0xF135BAAAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf135baaa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preExttload0xF135BAAAFunction.selector
        });
    }
}

abstract contract PoolManager$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, PoolManager$InitializeFunctionInputs memory inputs, PoolManager$InitializeFunctionOutputs memory outputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x6276cbbe),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract PoolManager$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, PoolManager$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x6276cbbe),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract PoolManager$OnIsOperatorFunction {
    function onIsOperatorFunction(FunctionContext memory ctx, PoolManager$IsOperatorFunctionInputs memory inputs, PoolManager$IsOperatorFunctionOutputs memory outputs) virtual external;

    function triggerOnIsOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xb6363cf2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsOperatorFunction.selector
        });
    }
}

abstract contract PoolManager$PreIsOperatorFunction {
    function preIsOperatorFunction(PreFunctionContext memory ctx, PoolManager$IsOperatorFunctionInputs memory inputs) virtual external;

    function triggerPreIsOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xb6363cf2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsOperatorFunction.selector
        });
    }
}

abstract contract PoolManager$OnMintFunction {
    function onMintFunction(FunctionContext memory ctx, PoolManager$MintFunctionInputs memory inputs) virtual external;

    function triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x156e29f6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMintFunction.selector
        });
    }
}

abstract contract PoolManager$PreMintFunction {
    function preMintFunction(PreFunctionContext memory ctx, PoolManager$MintFunctionInputs memory inputs) virtual external;

    function triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x156e29f6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMintFunction.selector
        });
    }
}

abstract contract PoolManager$OnModifyLiquidityFunction {
    function onModifyLiquidityFunction(FunctionContext memory ctx, PoolManager$ModifyLiquidityFunctionInputs memory inputs, PoolManager$ModifyLiquidityFunctionOutputs memory outputs) virtual external;

    function triggerOnModifyLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x5a6bcfda),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onModifyLiquidityFunction.selector
        });
    }
}

abstract contract PoolManager$PreModifyLiquidityFunction {
    function preModifyLiquidityFunction(PreFunctionContext memory ctx, PoolManager$ModifyLiquidityFunctionInputs memory inputs) virtual external;

    function triggerPreModifyLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x5a6bcfda),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preModifyLiquidityFunction.selector
        });
    }
}

abstract contract PoolManager$OnOwnerFunction {
    function onOwnerFunction(FunctionContext memory ctx, PoolManager$OwnerFunctionOutputs memory outputs) virtual external;

    function triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnerFunction.selector
        });
    }
}

abstract contract PoolManager$PreOwnerFunction {
    function preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOwnerFunction.selector
        });
    }
}

abstract contract PoolManager$OnProtocolFeeControllerFunction {
    function onProtocolFeeControllerFunction(FunctionContext memory ctx, PoolManager$ProtocolFeeControllerFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf02de3b2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract PoolManager$PreProtocolFeeControllerFunction {
    function preProtocolFeeControllerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf02de3b2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract PoolManager$OnProtocolFeesAccruedFunction {
    function onProtocolFeesAccruedFunction(FunctionContext memory ctx, PoolManager$ProtocolFeesAccruedFunctionInputs memory inputs, PoolManager$ProtocolFeesAccruedFunctionOutputs memory outputs) virtual external;

    function triggerOnProtocolFeesAccruedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x97e8cd4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProtocolFeesAccruedFunction.selector
        });
    }
}

abstract contract PoolManager$PreProtocolFeesAccruedFunction {
    function preProtocolFeesAccruedFunction(PreFunctionContext memory ctx, PoolManager$ProtocolFeesAccruedFunctionInputs memory inputs) virtual external;

    function triggerPreProtocolFeesAccruedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x97e8cd4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProtocolFeesAccruedFunction.selector
        });
    }
}

abstract contract PoolManager$OnSetOperatorFunction {
    function onSetOperatorFunction(FunctionContext memory ctx, PoolManager$SetOperatorFunctionInputs memory inputs, PoolManager$SetOperatorFunctionOutputs memory outputs) virtual external;

    function triggerOnSetOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x558a7297),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetOperatorFunction.selector
        });
    }
}

abstract contract PoolManager$PreSetOperatorFunction {
    function preSetOperatorFunction(PreFunctionContext memory ctx, PoolManager$SetOperatorFunctionInputs memory inputs) virtual external;

    function triggerPreSetOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x558a7297),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetOperatorFunction.selector
        });
    }
}

abstract contract PoolManager$OnSetProtocolFeeFunction {
    function onSetProtocolFeeFunction(FunctionContext memory ctx, PoolManager$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function triggerOnSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x7e87ce7d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetProtocolFeeFunction.selector
        });
    }
}

abstract contract PoolManager$PreSetProtocolFeeFunction {
    function preSetProtocolFeeFunction(PreFunctionContext memory ctx, PoolManager$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function triggerPreSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x7e87ce7d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetProtocolFeeFunction.selector
        });
    }
}

abstract contract PoolManager$OnSetProtocolFeeControllerFunction {
    function onSetProtocolFeeControllerFunction(FunctionContext memory ctx, PoolManager$SetProtocolFeeControllerFunctionInputs memory inputs) virtual external;

    function triggerOnSetProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x2d771389),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract PoolManager$PreSetProtocolFeeControllerFunction {
    function preSetProtocolFeeControllerFunction(PreFunctionContext memory ctx, PoolManager$SetProtocolFeeControllerFunctionInputs memory inputs) virtual external;

    function triggerPreSetProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x2d771389),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract PoolManager$OnSettleFunction {
    function onSettleFunction(FunctionContext memory ctx, PoolManager$SettleFunctionOutputs memory outputs) virtual external;

    function triggerOnSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x11da60b4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSettleFunction.selector
        });
    }
}

abstract contract PoolManager$PreSettleFunction {
    function preSettleFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x11da60b4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSettleFunction.selector
        });
    }
}

abstract contract PoolManager$OnSettleForFunction {
    function onSettleForFunction(FunctionContext memory ctx, PoolManager$SettleForFunctionInputs memory inputs, PoolManager$SettleForFunctionOutputs memory outputs) virtual external;

    function triggerOnSettleForFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x3dd45adb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSettleForFunction.selector
        });
    }
}

abstract contract PoolManager$PreSettleForFunction {
    function preSettleForFunction(PreFunctionContext memory ctx, PoolManager$SettleForFunctionInputs memory inputs) virtual external;

    function triggerPreSettleForFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x3dd45adb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSettleForFunction.selector
        });
    }
}

abstract contract PoolManager$OnSupportsInterfaceFunction {
    function onSupportsInterfaceFunction(FunctionContext memory ctx, PoolManager$SupportsInterfaceFunctionInputs memory inputs, PoolManager$SupportsInterfaceFunctionOutputs memory outputs) virtual external;

    function triggerOnSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSupportsInterfaceFunction.selector
        });
    }
}

abstract contract PoolManager$PreSupportsInterfaceFunction {
    function preSupportsInterfaceFunction(PreFunctionContext memory ctx, PoolManager$SupportsInterfaceFunctionInputs memory inputs) virtual external;

    function triggerPreSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSupportsInterfaceFunction.selector
        });
    }
}

abstract contract PoolManager$OnSwapFunction {
    function onSwapFunction(FunctionContext memory ctx, PoolManager$SwapFunctionInputs memory inputs, PoolManager$SwapFunctionOutputs memory outputs) virtual external;

    function triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf3cd914c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSwapFunction.selector
        });
    }
}

abstract contract PoolManager$PreSwapFunction {
    function preSwapFunction(PreFunctionContext memory ctx, PoolManager$SwapFunctionInputs memory inputs) virtual external;

    function triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf3cd914c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSwapFunction.selector
        });
    }
}

abstract contract PoolManager$OnSyncFunction {
    function onSyncFunction(FunctionContext memory ctx, PoolManager$SyncFunctionInputs memory inputs) virtual external;

    function triggerOnSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xa5841194),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSyncFunction.selector
        });
    }
}

abstract contract PoolManager$PreSyncFunction {
    function preSyncFunction(PreFunctionContext memory ctx, PoolManager$SyncFunctionInputs memory inputs) virtual external;

    function triggerPreSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xa5841194),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSyncFunction.selector
        });
    }
}

abstract contract PoolManager$OnTakeFunction {
    function onTakeFunction(FunctionContext memory ctx, PoolManager$TakeFunctionInputs memory inputs) virtual external;

    function triggerOnTakeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x0b0d9c09),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTakeFunction.selector
        });
    }
}

abstract contract PoolManager$PreTakeFunction {
    function preTakeFunction(PreFunctionContext memory ctx, PoolManager$TakeFunctionInputs memory inputs) virtual external;

    function triggerPreTakeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x0b0d9c09),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTakeFunction.selector
        });
    }
}

abstract contract PoolManager$OnTransferFunction {
    function onTransferFunction(FunctionContext memory ctx, PoolManager$TransferFunctionInputs memory inputs, PoolManager$TransferFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x095bcdb6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFunction.selector
        });
    }
}

abstract contract PoolManager$PreTransferFunction {
    function preTransferFunction(PreFunctionContext memory ctx, PoolManager$TransferFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x095bcdb6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFunction.selector
        });
    }
}

abstract contract PoolManager$OnTransferFromFunction {
    function onTransferFromFunction(FunctionContext memory ctx, PoolManager$TransferFromFunctionInputs memory inputs, PoolManager$TransferFromFunctionOutputs memory outputs) virtual external;

    function triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xfe99049a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferFromFunction.selector
        });
    }
}

abstract contract PoolManager$PreTransferFromFunction {
    function preTransferFromFunction(PreFunctionContext memory ctx, PoolManager$TransferFromFunctionInputs memory inputs) virtual external;

    function triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xfe99049a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferFromFunction.selector
        });
    }
}

abstract contract PoolManager$OnTransferOwnershipFunction {
    function onTransferOwnershipFunction(FunctionContext memory ctx, PoolManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferOwnershipFunction.selector
        });
    }
}

abstract contract PoolManager$PreTransferOwnershipFunction {
    function preTransferOwnershipFunction(PreFunctionContext memory ctx, PoolManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferOwnershipFunction.selector
        });
    }
}

abstract contract PoolManager$OnUnlockFunction {
    function onUnlockFunction(FunctionContext memory ctx, PoolManager$UnlockFunctionInputs memory inputs, PoolManager$UnlockFunctionOutputs memory outputs) virtual external;

    function triggerOnUnlockFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x48c89491),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUnlockFunction.selector
        });
    }
}

abstract contract PoolManager$PreUnlockFunction {
    function preUnlockFunction(PreFunctionContext memory ctx, PoolManager$UnlockFunctionInputs memory inputs) virtual external;

    function triggerPreUnlockFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x48c89491),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUnlockFunction.selector
        });
    }
}

abstract contract PoolManager$OnUpdateDynamicLpFeeFunction {
    function onUpdateDynamicLpFeeFunction(FunctionContext memory ctx, PoolManager$UpdateDynamicLpFeeFunctionInputs memory inputs) virtual external;

    function triggerOnUpdateDynamicLpFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x52759651),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpdateDynamicLpFeeFunction.selector
        });
    }
}

abstract contract PoolManager$PreUpdateDynamicLpFeeFunction {
    function preUpdateDynamicLpFeeFunction(PreFunctionContext memory ctx, PoolManager$UpdateDynamicLpFeeFunctionInputs memory inputs) virtual external;

    function triggerPreUpdateDynamicLpFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x52759651),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpdateDynamicLpFeeFunction.selector
        });
    }
}


struct PoolManager$EmitAllEvents$Approval {
  address owner;
  address spender;
  uint256 id;
  uint256 amount;
}

struct PoolManager$EmitAllEvents$Donate {
  bytes32 id;
  address sender;
  uint256 amount0;
  uint256 amount1;
}

struct PoolManager$EmitAllEvents$Initialize {
  bytes32 id;
  address currency0;
  address currency1;
  uint24 fee;
  int24 tickSpacing;
  address hooks;
  uint160 sqrtPriceX96;
  int24 tick;
}

struct PoolManager$EmitAllEvents$ModifyLiquidity {
  bytes32 id;
  address sender;
  int24 tickLower;
  int24 tickUpper;
  int256 liquidityDelta;
  bytes32 salt;
}

struct PoolManager$EmitAllEvents$OperatorSet {
  address owner;
  address operator;
  bool approved;
}

struct PoolManager$EmitAllEvents$OwnershipTransferred {
  address user;
  address newOwner;
}

struct PoolManager$EmitAllEvents$ProtocolFeeControllerUpdated {
  address protocolFeeController;
}

struct PoolManager$EmitAllEvents$ProtocolFeeUpdated {
  bytes32 id;
  uint24 protocolFee;
}

struct PoolManager$EmitAllEvents$Swap {
  bytes32 id;
  address sender;
  int128 amount0;
  int128 amount1;
  uint160 sqrtPriceX96;
  uint128 liquidity;
  int24 tick;
  uint24 fee;
}

struct PoolManager$EmitAllEvents$Transfer {
  address caller;
  address from;
  address to;
  uint256 id;
  uint256 amount;
}

contract PoolManager$EmitAllEvents is
  PoolManager$OnApprovalEvent,
PoolManager$OnDonateEvent,
PoolManager$OnInitializeEvent,
PoolManager$OnModifyLiquidityEvent,
PoolManager$OnOperatorSetEvent,
PoolManager$OnOwnershipTransferredEvent,
PoolManager$OnProtocolFeeControllerUpdatedEvent,
PoolManager$OnProtocolFeeUpdatedEvent,
PoolManager$OnSwapEvent,
PoolManager$OnTransferEvent
{
  event Approval(PoolManager$EmitAllEvents$Approval);
  event Donate(PoolManager$EmitAllEvents$Donate);
  event Initialize(PoolManager$EmitAllEvents$Initialize);
  event ModifyLiquidity(PoolManager$EmitAllEvents$ModifyLiquidity);
  event OperatorSet(PoolManager$EmitAllEvents$OperatorSet);
  event OwnershipTransferred(PoolManager$EmitAllEvents$OwnershipTransferred);
  event ProtocolFeeControllerUpdated(PoolManager$EmitAllEvents$ProtocolFeeControllerUpdated);
  event ProtocolFeeUpdated(PoolManager$EmitAllEvents$ProtocolFeeUpdated);
  event Swap(PoolManager$EmitAllEvents$Swap);
  event Transfer(PoolManager$EmitAllEvents$Transfer);

  function onApprovalEvent(EventContext memory ctx, PoolManager$ApprovalEventParams memory inputs) virtual external override {
    emit Approval(PoolManager$EmitAllEvents$Approval(inputs.owner, inputs.spender, inputs.id, inputs.amount));
  }
function onDonateEvent(EventContext memory ctx, PoolManager$DonateEventParams memory inputs) virtual external override {
    emit Donate(PoolManager$EmitAllEvents$Donate(inputs.id, inputs.sender, inputs.amount0, inputs.amount1));
  }
function onInitializeEvent(EventContext memory ctx, PoolManager$InitializeEventParams memory inputs) virtual external override {
    emit Initialize(PoolManager$EmitAllEvents$Initialize(inputs.id, inputs.currency0, inputs.currency1, inputs.fee, inputs.tickSpacing, inputs.hooks, inputs.sqrtPriceX96, inputs.tick));
  }
function onModifyLiquidityEvent(EventContext memory ctx, PoolManager$ModifyLiquidityEventParams memory inputs) virtual external override {
    emit ModifyLiquidity(PoolManager$EmitAllEvents$ModifyLiquidity(inputs.id, inputs.sender, inputs.tickLower, inputs.tickUpper, inputs.liquidityDelta, inputs.salt));
  }
function onOperatorSetEvent(EventContext memory ctx, PoolManager$OperatorSetEventParams memory inputs) virtual external override {
    emit OperatorSet(PoolManager$EmitAllEvents$OperatorSet(inputs.owner, inputs.operator, inputs.approved));
  }
function onOwnershipTransferredEvent(EventContext memory ctx, PoolManager$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(PoolManager$EmitAllEvents$OwnershipTransferred(inputs.user, inputs.newOwner));
  }
function onProtocolFeeControllerUpdatedEvent(EventContext memory ctx, PoolManager$ProtocolFeeControllerUpdatedEventParams memory inputs) virtual external override {
    emit ProtocolFeeControllerUpdated(PoolManager$EmitAllEvents$ProtocolFeeControllerUpdated(inputs.protocolFeeController));
  }
function onProtocolFeeUpdatedEvent(EventContext memory ctx, PoolManager$ProtocolFeeUpdatedEventParams memory inputs) virtual external override {
    emit ProtocolFeeUpdated(PoolManager$EmitAllEvents$ProtocolFeeUpdated(inputs.id, inputs.protocolFee));
  }
function onSwapEvent(EventContext memory ctx, PoolManager$SwapEventParams memory inputs) virtual external override {
    emit Swap(PoolManager$EmitAllEvents$Swap(inputs.id, inputs.sender, inputs.amount0, inputs.amount1, inputs.sqrtPriceX96, inputs.liquidity, inputs.tick, inputs.fee));
  }
function onTransferEvent(EventContext memory ctx, PoolManager$TransferEventParams memory inputs) virtual external override {
    emit Transfer(PoolManager$EmitAllEvents$Transfer(inputs.caller, inputs.from, inputs.to, inputs.id, inputs.amount));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](10);
    triggers[0] = this.triggerOnApprovalEvent();
    triggers[1] = this.triggerOnDonateEvent();
    triggers[2] = this.triggerOnInitializeEvent();
    triggers[3] = this.triggerOnModifyLiquidityEvent();
    triggers[4] = this.triggerOnOperatorSetEvent();
    triggers[5] = this.triggerOnOwnershipTransferredEvent();
    triggers[6] = this.triggerOnProtocolFeeControllerUpdatedEvent();
    triggers[7] = this.triggerOnProtocolFeeUpdatedEvent();
    triggers[8] = this.triggerOnSwapEvent();
    triggers[9] = this.triggerOnTransferEvent();
    return triggers;
  }
}
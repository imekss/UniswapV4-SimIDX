# 🦄 Uniswap v4 Hooks Indexer (Dune SIM IDX)

This project uses [Dune SIM IDX](https://docs.sim.dune.com/idx) to **index Uniswap v4 PoolManager events** directly in Solidity, 
and expose APIs for hook adoption and usage analytics.

## ✨ What it does
- Indexes **pool initialization** (which tokens, fee tier, tick spacing, and hook address).
- Indexes **pool swaps** (amounts, price movement, liquidity, tick).
- Exposes API endpoints for:
  - ✅ **Hook adoption** – which hooks are being used, and when they were first seen.
  - ✅ **Pools by hook** – list pools initialized with a given hook.
  - ✅ **Hook usage over time** – daily swap activity per hook.
  - ✅ **Pool activity samples** – latest swaps or inits (for dashboards/testing).

Built with [Dune SIM IDX](https://docs.sim.dune.com/idx), a framework that helps you index blockchain data in minutes by defining listeners that react to onchain events, extract relevant data, and automatically make it queryable via an API, with the option to extend your indexer using custom **Solidity** code to capture advanced onchain logic directly from smart contracts .

## 🔍 Why it matters
Uniswap v4 introduces **hooks** (custom contracts that extend pool behavior).  
Tracking adoption and usage of hooks is critical for:
- Understanding ecosystem experiments (e.g. dynamic fees, custom AMMs).
- Measuring adoption across chains (Ethereum, Base, Unichain, …).
- Providing a foundation for more advanced analytics (TVL, fee revenue, LP activity).


## Exposed API

```json
{
  "result": [
    {
      "chainId": "8453",
      "caller": "0x498581ff718922c3f8e6a244956af099b2652b2b",
      "currency0": "0x34c990ee5aa627e9304234cc59b0734163eac06b",
      "currency1": "0x4200000000000000000000000000000000000006",
      "fee": "10000",
      "tickSpacing": "200",
      "hooks": "0x0000000000000000000000000000000000000000",
      "sqrtPriceX96": "3543047340729470570140182131",
      "tick": "-62150"
    },
    {
      "chainId": "8453",
      "caller": "0x498581ff718922c3f8e6a244956af099b2652b2b",
      "currency0": "0x0000000000000000000000000000000000000000",
      "currency1": "0x833589fcd6edb6e08f4c7c32d4f71b54bda02913",
      "fee": "500",
      "tickSpacing": "10",
      "hooks": "0x0000000000000000000000000000000000000000",
      "sqrtPriceX96": "4544307743394349740287271",
      "tick": "-195334"
    }
  ]
}
```

## Indexing Methodology

_Details coming soon._

## Querying Methodology

_Details coming soon._

## App Structure

```text
.
├── sim.toml                        # App configuration
├── apis/                           # Your custom API code
├── abis/                           # Contract ABI files (JSON)
│   └── PoolManager.json            # Uniswap v4 PoolManager ABI
└── listeners/                      # Foundry project for listener contracts
    ├── src/
    │   └── Main.sol                # Triggers contract & listener logic
    │   └── PoolManagerListener.sol # Solidity listener for Uniswap v4 PoolManager
    └── test/
        └── Main.t.sol              # Unit tests for your listener
```

## SIM IDX: Quickstart Resources

Ready to start building? Check out our comprehensive guides:

- **[Deploying Your App](https://docs.sim.dune.com/idx/deployment)** - Deploy your app
- **[Adding ABIs](https://docs.sim.dune.com/idx/cli#sim-abi)** - How to add contract ABIs
- **[Writing Listeners](https://docs.sim.dune.com/idx/listener)** - Define your indexing logic
- **[CLI Reference](https://docs.sim.dune.com/idx/cli)** - All available commands

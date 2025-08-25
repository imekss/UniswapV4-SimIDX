# Uniswap V4 Hook Observatory
This app indexes pool creation and activity events on Uniswap v4 and exposes an API endpoint that can be used to:
- Query which hooks are attached to each pool at initialization.
- Track the adoption and usage of different hook types over time.


Built with [Dune SIM IDX](https://docs.sim.dune.com/idx), a framework that helps you index blockchain data in minutes by defining listeners that react to onchain events, extract relevant data, and automatically make it queryable via an API, with the option to extend your indexer using custom **Solidity** code to capture advanced onchain logic directly from smart contracts.

## Exposed API

We expose the following API:

`/v4/...`

This will then output the pool(s) that match the given parameters, including the hook attached at initialization:

```json
{
  "result": [
    {
      "poolId": "0x8b2e1f...c1a4",
      "chain": "eth",
      "currency0": "0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48",
      "currency1": "0x6b175474e89094c44da98b954eedeac495271d0f",
      "fee": 500,
      "tickSpacing": 10,
      "hooks": "0x1234abcd5678ef901234abcd5678ef901234abcd",
      "initializedAt": 20757832,
      "sqrtPriceX96": "79228162514264337593543950336",
      "tick": -276324
    },
    {
      "poolId": "0x91cd9a...b442",
      "chain": "eth",
      "currency0": "0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48",
      "currency1": "0x6b175474e89094c44da98b954eedeac495271d0f",
      "fee": 500,
      "tickSpacing": 10,
      "hooks": "0x9abcdeffedcba987654321009876543210abcdef",
      "initializedAt": 20757890,
      "sqrtPriceX96": "79228162514264337593543950336",
      "tick": -276320
    }
  ]
}
```

## Indexing Methodology
...
...
...

## Querying Methodology
...
...
...

The main files and folders you'll work with are:

-   **`abis/`** - Add JSON ABI files for contracts you want to index.
-   **`listeners/src/`** - Define your `Triggers` contract in `Main.sol` and implement your handler logic in one or more listener contracts.
-   **`apis/src/index.ts`** - Define APIs for your indexed data.

## App Structure

```text
.
├── sim.toml                       # App configuration
├── apis/                          # Your custom API code
├── abis/                          # Contract ABI files (JSON)
│   └── UniswapV4PoolManager.json  # Uniswap V4 PoolManager ABI
└── listeners/                     # Foundry project for listener contracts
    ├── src/
    │   └── Main.sol               # Triggers contract & listener logic
    └── test/
        └── Main.t.sol             # Unit tests for your listener
```

## SIM IDX: Quickstart Resources

Ready to start building? Check out our comprehensive guides:

-   **[Deploying Your App](https://docs.sim.dune.com/idx/deployment)** - Deploy your app
-   **[Adding ABIs](https://docs.sim.dune.com/idx/cli#sim-abi)** - How to add contract ABIs
-   **[Writing Listeners](https://docs.sim.dune.com/idx/listener)** - Define your indexing logic
-   **[CLI Reference](https://docs.sim.dune.com/idx/cli)** - All available commands

# Uniswap V4 Hook Observatory
This app indexes pool creation and activity events on Uniswap v4 and exposes an API endpoint that can be used to:
- Query which **hooks** are attached to each pool at initialization.
- Track the adoption and usage of different hook types over time.


Built with [Dune SIM IDX](https://docs.sim.dune.com/idx), a framework that helps you index blockchain data in minutes by defining listeners that react to onchain events, extract relevant data, and automatically make it queryable via an API, with the option to extend your indexer using custom **Solidity** code to capture advanced onchain logic directly from smart contracts.

## Exposed API

We expose the following API:

`/v4/...`

This will then output the pool(s) that match the given parameters, including the hook attached at initialization:

```json
{
  "schema": {
    "chainId": 8453,
    "caller": "498581ff718922c3f8e6a244956af099b2652b2b",
    "currency0": "30c3672ee1562a138e3cabf9186208e25117743b",
    "currency1": "5657395cbccb2d671593a9a7e823e7f4b56e2b52",
    "fee": 30000,
    "tickSpacing": 200,
    "hooks": "9ea932730a7787000042e34390b8e435dd839040",
    "sqrtPriceX96": "1178734673953441494749930375074",
    "tick": 54000
  },
  "metadata": {
    "block_number": 33496106,
    "block_timestamp": 1753781559,
    "chain_id": 8453
  }
}
{
  "schema": {
    "chainId": 8453,
    "caller": "498581ff718922c3f8e6a244956af099b2652b2b",
    "currency0": "08a80f074b04b0866781679c7e216ca705f23030",
    "currency1": "f9922f341079fa9d10d3a7ad92a198496a2e6d95",
    "fee": 30000,
    "tickSpacing": 200,
    "hooks": "9ea932730a7787000042e34390b8e435dd839040",
    "sqrtPriceX96": "5325288102651180869496681778",
    "tick": -54000
  },
  "metadata": {
    "block_number": 33496106,
    "block_timestamp": 1753781559,
    "chain_id": 8453
  }
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

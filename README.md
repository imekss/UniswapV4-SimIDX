# Uniswap V4 Hook Observatory
Sim IDX is a framework that helps you build and deploy applications that index blockchain data in minutes. Define listeners that react to specific onchain events, extract relevant data, and automatically make this data queryable via an API.

This app indexes pool creation and activity events on Uniswap v4 and exposes an endpoint which can be used to query which hooks are attached to each pool and to track adoption and usage of different hook types over time.

## Exposed API
...
...
...

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
│   └── UniswapV4PoolManager.json  # Example: Uniswap V4 PoolManager ABI
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

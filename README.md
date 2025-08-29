# Uniswap V4 Hook Observatory
This app uses **Solidity listeners** with **Dune Sim IDX** to index activity events on the Uniswap v4 **PoolManager**.  
It exposes API endpoints that can be used to:  
- Query which **hooks** are attached to each pool at initialization.  
- Track the adoption and usage of different hook types over time. (soon)

Built with [Dune SIM IDX](https://docs.sim.dune.com/idx), a framework that helps you index blockchain data in minutes by defining listeners that react to onchain events, extract relevant data, and automatically make it queryable via an API, with the option to extend your indexer using custom **Solidity** code to capture advanced onchain logic directly from smart contracts . 

## Exposed API

```json
{
  "schema": {
    "chainId": 1,
    "caller": "000000000004444c5dc75cb358380d2e3de08a90",
    "currency0": "0000000000000000000000000000000000000000",
    "currency1": "d7fc610f6595b3aa6e24466b5ca166d10a0fbdcb",
    "fee": 101000,
    "tickSpacing": 2020,
    "hooks": "0000000000000000000000000000000000000000",
    "sqrtPriceX96": "2445024327719080417722818152568",
    "tick": 68593
  },
  "metadata": {
    "block_number": 22396216,
    "block_timestamp": 1746190067,
    "chain_id": 1
  }
}
{
  "schema": {
    "chainId": 1,
    "caller": "000000000004444c5dc75cb358380d2e3de08a90",
    "currency0": "0000000000000000000000000000000000000000",
    "currency1": "a2176658f1826d16d01c38df18041fb7881d6812",
    "fee": 10000,
    "tickSpacing": 200,
    "hooks": "0000000000000000000000000000000000000000",
    "sqrtPriceX96": "6755148279259821435900793544",
    "tick": -49243
  },
  "metadata": {
    "block_number": 23092850,
    "block_timestamp": 1754613983,
    "chain_id": 1
  }
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
    │   └── PoolManagerListener.sol # # Solidity listener for Uniswap v4 PoolManager
    └── test/
        └── Main.t.sol              # Unit tests for your listener
```

## SIM IDX: Quickstart Resources

Ready to start building? Check out our comprehensive guides:

-   **[Deploying Your App](https://docs.sim.dune.com/idx/deployment)** - Deploy your app
-   **[Adding ABIs](https://docs.sim.dune.com/idx/cli#sim-abi)** - How to add contract ABIs
-   **[Writing Listeners](https://docs.sim.dune.com/idx/listener)** - Define your indexing logic
-   **[CLI Reference](https://docs.sim.dune.com/idx/cli)** - All available commands

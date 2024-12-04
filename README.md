## Hello Base Contracts

![og](https://hellobase.dev/og.png)

This repo contains the smart contracts behind [HelloBase](https://hellobase.dev), primarily a `HelloBaseFactory.sol` and a `HelloBase.sol` template contract. These are purely for educational purposes and are only deployed on a testnet.

>[!WARNING] There is no security mechanism to prevent someone else from updating the greeting, as they are meant to be temporal training exercises.

## Development

Make sure you already have the [Foundry](https://book.getfoundry.sh/) toolchain installed

Clone the repo and install dependencies.

```
git clone https://github.com/PinataCloud/hello-base-contracts
cd hello-base-contracts
forge install
```

Compile the contracts

```
forge build
```

Run tests

```
forge test -vvv --gas-report
```

## Deployment

The factory contract will automatically deploy the template used inside of it, so all you need to do is deploy the factory.

```
forge create src/HelloBaseFactory.sol:HelloBaseFactory --rpc-url https://sepolia.base.org --private-key <PRIVATE_KEY>
```

## Contact

Feel free to reach out if you have any questions!

[steve@pinata.cloud](mailto:steve@pinata.cloud)

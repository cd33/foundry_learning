# foundry_learning
## Première Installation:
Utiliser Git Bash
```
curl -L https://foundry.paradigm.xyz | bash
foundryup
forge init
```

## Commande utiles
### Compiler, lancer le node et déployer en local
```
forge compile (or forge build)
anvil (lancer la blockchain locale)
forge create SimpleStorage --interactive
forge create --rpc-url <your_rpc_url> --private-key <your_private_key> src/MyContract.sol:MyContract
forge script script/DeploySimpleStorage.s.sol
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```
### Intéragir avec le contrat déployé
```
cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "setNumber(uint256)" 42 --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
cast call 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "number()" --rpc-url http://127.0.0.1:8545
cast --to-base 0x000000000000000000000000000000000000000000000000000000000000002a dec
```
### Déployer sur testnet
```
source .env (pour charger les variables d'environnement)
forge script script/DeploySimpleStorage.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast
```
### Vérifier contrat
```
forge verify-contract 0x0f95700E5F969d6530DC04EB1B830d5dA2DE7795 SimpleStorage --watch --chain-id 11155111
```
### Tests
```
forge test -vv
forge test --gas-report (pour avoir le gas report)
```
### Set Solidity Compiler Version and optimizer
In the file foundry.toml
```
solc_version = "0.8.18"
optimizer = true
optimizer_runs = 200
```
### Importer des librairies (Remapping)
 
# Create a native segwit address and get the public key from the address.
segwitadd=$(bitcoin-cli  -rpcwallet="builderswallet" getnewaddress "segwit" "bech32" )\
bitcoin-cli  -named getaddressinfo address=$segwitadd | jq -r '.pubkey'
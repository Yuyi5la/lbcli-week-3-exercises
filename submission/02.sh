# Create a native segwit address and get the public key from the address.
segwitadd=$(bitcoin-cli -regtest -rpcwallet="builderswallet" getnewaddress "segwit" "bech32" )\
bitcoin-cli -regtest -named getaddressinfo address="$segwitadd" | jq -r '.pubkey'
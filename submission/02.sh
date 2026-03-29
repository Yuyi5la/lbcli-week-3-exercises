# Create a native segwit address and get the public key from the address.
segwitadd=$(bitcoin-cli -regtest -rpcwallet="builderswallet" getnewaddress "segwit" "bech32" )
bitcoin-cli -regtest -rpcwallet="builderswallet" getaddressinfo "$segwitadd"  | jq -r '.pubkey'
SCRIPT_NAME=$1
SCRIPT_ADDRESS=$($CARDANO_CLI address build --payment-script-file ./scripts/${SCRIPT_NAME}.plutus --testnet-magic 7)
echo $SCRIPT_ADDRESS > ./wallets/${SCRIPT_NAME}.addr
./balance.sh ${SCRIPT_NAME}


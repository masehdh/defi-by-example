### Install

```shell
# install vyper
virtualenv -p python3 venv
source venv/bin/activate
pip install vyper

cp .env.sample .env
```

### For windows

```
virtualenv -p python3 venv
venv\Scripts\activate
pip install vyper

```

### To run

```
venv\Scripts\activate
truffle compile

```

### Test (Linux users)

```shell
source .env

# using infura.io
npx ganache-cli \
--fork https://mainnet.infura.io/v3/$WEB3_INFURA_PROJECT_ID \
--unlock $WETH_WHALE \
--unlock $DAI_WHALE \
--unlock $USDC_WHALE \
--unlock $USDT_WHALE \
--unlock $WBTC_WHALE \
--networkId 999

# using archivenode.io (limit 10 req / sec)
## fork at block
BLOCK=11597142
ARCHIVE_NODE_URL=https://api.archivenode.io/$ARCHIVE_NODE_API_KEY@$BLOCK
## latest block
ARCHIVE_NODE_URL=https://api.archivenode.io/$ARCHIVE_NODE_API_KEY

ganache-cli \
--fork $ARCHIVE_NODE_URL \
--unlock $WETH_WHALE \
--unlock $DAI_WHALE \
--unlock $USDC_WHALE \
--unlock $USDT_WHALE \
--unlock $WBTC_WHALE \
--networkId 999

# run test
env $(cat .env) npx truffle test --network mainnet_fork test/test-erc20.js
env $(cat .env) npx truffle test --network mainnet_fork test/test-dydx-solo-margin.js
```

### Test (Windows users)

```Update the env variables in the env.cmd file and run the following:
.\env.cmd


# using infura.io
Make sure not to include the "\" when entering the command in cmd. For example, put the following in one line: 
npx ganache-cli --fork https://mainnet.infura.io/v3/%WEB3_INFURA_PROJECT_ID% --unlock %WETH_WHALE% --unlock %DAI_WHALE% --networkId 999

Unlock other env variables as necessary: 

npx ganache-cli --fork https://mainnet.infura.io/v3/%WEB3_INFURA_PROJECT_ID% \
--unlock %WETH_WHALE% \
--unlock %DAI_WHALE% \
--unlock %USDC_WHALE% \
--unlock %USDT_WHALE% \
--unlock %WBTC_WHALE% \
--networkId 999

# using archivenode.io (limit 10 req / sec)
## fork at block
BLOCK=11597142
ARCHIVE_NODE_URL=https://api.archivenode.io/%ARCHIVE_NODE_API_KEY%@%BLOCK%
## latest block
ARCHIVE_NODE_URL=https://api.archivenode.io/%ARCHIVE_NODE_API_KEY%

ganache-cli \
--fork %ARCHIVE_NODE_URL% \
--unlock %WETH_WHALE% \
--unlock %DAI_WHALE% \
--unlock %USDC_WHALE% \
--unlock %USDT_WHALE% \
--unlock %WBTC_WHALE% \
--networkId 999

# run test
npx truffle test --network mainnet_fork test/test-erc20.js
npx truffle test --network mainnet_fork test/test-dydx-solo-margin.js
```
